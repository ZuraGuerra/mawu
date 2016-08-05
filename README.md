# Mawu

Elixir wrapper for the Google Calendar API  📅 💜💧

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `mawu` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:mawu, "~> 0.1.0"}]
    end
    ```

  2. Ensure `mawu` is started before your application:

    ```elixir
    def application do
      [applications: [:mawu]]
    end
    ```

  3. Add your Google app keys to the `Uberauth` configuration,
  (you can generate one [here](https://console.developers.google.com/)):

    ```elixir
    config :ueberauth, Ueberauth, providers: [google: {Ueberauth.Strategy.Google, []}]
    config :ueberauth, Ueberauth.Strategy.Google.OAuth,
      # Please use env vars (ఠ్ఠ ˓̭ ఠ్ఠ)
      client_id: System.get_env("GOOGLE_CLIENT_ID"),
      client_secret: System.get_env("GOOGLE_CLIENT_SECRET")
    ```

  4. Check the [Überauth Google readme](https://github.com/ueberauth/ueberauth_google) to implement the Google auth.

## Usage
