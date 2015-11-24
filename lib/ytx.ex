defmodule Ytx do
  use HTTPotion.Base

  def host, do: "https://www.googleapis.com"

  def process_url(url), do: host <> url

  def process_response_body(body) do
    body
    |> IO.iodata_to_binary
    |> :jsx.decode
    |> Enum.into(%{})
  end
end

# Ytx.Video.find("zGhj36gG-T4", "AIzaSyAhukWK5pdPW55XWsLU0AF-STxdW9ML-XQ")
