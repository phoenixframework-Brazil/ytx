defmodule Ytx.Mixfile do
  use Mix.Project

  def project do
    [app: :ytx,
     version: "0.0.1",
     description: "Youtube API Client for Elixir",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: [:logger,
                     :httpotion]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"},
      {:jsx, "~> 2.8"}]
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Victor Lima Campos"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/victorlcampos/ytx",
              "Issues" => "https://github.com/victorlcampos/ytx/issues"}]
  end
end
