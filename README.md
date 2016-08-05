# Mawu

Elixir wrapper for the Google Calendar API 📅💧💜

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

  3. Add your Google app keys to the `mawu` configuration,
  (you can generate one [here](https://console.developers.google.com/)):

    ```elixir
    config :mawu,
      # Please use env vars (ఠ్ఠ ˓̭ ఠ్ఠ)
      google_client_id: 'asdf',
      google_client_secret: 'fdsa'
    ```

   4. **Required** - Check the [Überauth Google readme](https://github.com/ueberauth/ueberauth_google) to implement the Google auth.

## Usage
