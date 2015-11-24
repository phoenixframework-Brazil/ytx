defmodule Ytx.Video do
  import Ytx

  def path, do: "/youtube/v3/videos"

  def find(id, api_key, part \\ "snippet") do
    fetch_items(id, part, api_key) |> fetch_snippets |> Enum.into(%{})
  end

  defp fetch_items(id, part, api_key), do: get(find_url(id, part, api_key)).body |> Map.fetch! "items"

  defp find_url(id, part, api_key), do: path <> "?id=" <> id <> "&part=" <> part <> "&key=" <> api_key

  defp fetch_snippets(items), do: items |> hd |> Enum.into(%{}) |> Map.fetch!("snippet")
end
