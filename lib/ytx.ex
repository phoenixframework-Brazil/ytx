defmodule Ytx do
  use HTTPoison.Base

  def host, do: "https://www.googleapis.com"

  def process_url(url), do: host <> url

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
