defmodule PhoenixExOauth2ProviderDemo.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_ex_oauth2_provider_demo,
    adapter: Ecto.Adapters.Postgres
end
