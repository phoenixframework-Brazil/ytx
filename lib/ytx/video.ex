defmodule Ytx.Video do
  import Ytx

  def path, do: "/youtube/v3/videos"

  def find(id, api_key, part \\ "snippet") do
    case get(find_url(id, part, api_key)) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body |> fetch_items |> fetch_snippets}
      {:ok, %HTTPoison.Response{status_code: 400, body: body}} ->
        {:error, body |> Enum.into(%{})}
    end
  end

  defp find_url(id, part, api_key), do: path <> "?id=" <> id <> "&part=" <> part <> "&key=" <> api_key
  defp fetch_items(body) do
    body |> Map.fetch!("items")
  end

  defp fetch_snippets([])   , do: []
  defp fetch_snippets(items), do: items |> hd |> Enum.into(%{}) |> Map.fetch!("snippet")
end
