defmodule Mawu.Mixfile do
  use Mix.Project

  def project do
    [app: :mawu,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ueberauth_google]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ueberauth_google, "~> 0.2.0"}
    ]
  end

  # Configuration for Uberauth
  config :ueberauth, Ueberauth, providers: [google: {Ueberauth.Strategy.Google, []}]
  config :ueberauth, Ueberauth.Strategy.Google.OAuth,
  client_id: Application.get_env(:mawu, :google_client_id),
  client_secret: Application.get_env(:mawu, :google_client_secret)
end
