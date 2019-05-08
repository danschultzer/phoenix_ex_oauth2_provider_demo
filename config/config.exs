# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_ex_oauth2_provider_demo,
  ecto_repos: [PhoenixExOauth2ProviderDemo.Repo]

# Configures the endpoint
config :phoenix_ex_oauth2_provider_demo, PhoenixExOauth2ProviderDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "b5Wt8zR5eCIXosTah57Gdy/HIOcpOAcf9yOt0wM1NwylQ4afE/sjffP5yc1dciRv",
  render_errors: [view: PhoenixExOauth2ProviderDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixExOauth2ProviderDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix_ex_oauth2_provider_demo, :pow,
  user: PhoenixExOauth2ProviderDemo.Users.User,
  repo: PhoenixExOauth2ProviderDemo.Repo

config :phoenix_ex_oauth2_provider_demo, ExOauth2Provider,
  repo: PhoenixExOauth2ProviderDemo.Repo,
  resource_owner: PhoenixExOauth2ProviderDemo.Users.User

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
