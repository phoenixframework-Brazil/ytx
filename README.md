Ytx
===

## Installation

Add Ytx **and ibrowse** to your project's dependencies in `mix.exs`:

```elixir
  defp deps do
    [
      {:ytx, "~> 0.0.4"}
    ]
  end

  def application do
    [applications: [:ytx]]
  end
```

### If you're on Ubuntu
Make sure you have `erlang-dev` installed before using `ytx`.
You can do so by running:
```sh
apt-get install erlang-dev
```

## Videos
```elixir
Ytx.Video.find(video_id, api_key) or Ytx.Video.find(video_url, api_key)
iex(1)> Ytx.Video.find("zGhj36gG-T4", "xxx")
{:ok, %{"categoryId" => "22", "channelId" => "UCOtNSG9FI__vHIv3-PCtlUw",
  "channelTitle" => "maspoxavida",
  "description" => "Um vídeo sobre o novo messias e creme hidratante.",
  "liveBroadcastContent" => "none",
  "localized" => %{"description" => "Um vídeo sobre o novo messias e creme hidratante.",
    "title" => "GTA 5, Jesus e Bunda Estranha"},
  "publishedAt" => "2013-10-09T00:51:37.000Z",
  "tags" => ["maspoxavida", "pecesiqueira", "pcsiqueira", "gta 5", "jesus",
   "hidratante"],
  "thumbnails" => %{"default" => %{"height" => 90,
      "url" => "https://i.ytimg.com/vi/zGhj36gG-T4/default.jpg",
      "width" => 120},
    "high" => %{"height" => 360,
      "url" => "https://i.ytimg.com/vi/zGhj36gG-T4/hqdefault.jpg",
      "width" => 480},
    "medium" => %{"height" => 180,
      "url" => "https://i.ytimg.com/vi/zGhj36gG-T4/mqdefault.jpg",
      "width" => 320},
    "standard" => %{"height" => 480,
      "url" => "https://i.ytimg.com/vi/zGhj36gG-T4/sddefault.jpg",
      "width" => 640}}, "title" => "GTA 5, Jesus e Bunda Estranha"}}
```
