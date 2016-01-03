defmodule Ytx.Video do
  @resource_struct Rapidax.Resource.resource_struct ++ [name: "videos"]

  defstruct @resource_struct
  def resource_struct, do: @resource_struct

  def get_id(url), do: url |> String.split("v=") |>  List.last

  def find(url, api_key, part \\ "snippet") do
    resource = %Ytx.Video { params: get_params(url, part, api_key) }

    case Ytx.query(resource) do
      {:ok, body} ->
        {:ok, body |> fetch_items |> fetch_snippets}
      {:error, body} ->
        {:error, body |> Enum.into(%{})}
    end
  end

  defp get_params(url, part, api_key), do: [id: get_id(url), part: part, key: api_key]

  defp fetch_items(body), do: body |> Map.fetch!("items")

  defp fetch_snippets([])   , do: []
  defp fetch_snippets(items), do: items |> hd |> Enum.into(%{}) |> Map.fetch!("snippet")
end
