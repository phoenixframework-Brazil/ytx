defmodule Ytx do
  import Rapidax.Client.Http

  defstruct Rapidax.Client.Http.client_struct ++ [site: "https://www.googleapis.com/youtube/v3"]

  def query(resource), do: query(%Ytx{}, resource)
end
