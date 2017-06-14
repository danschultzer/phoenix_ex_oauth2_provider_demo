# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :myapp,
  ecto_repos: [Myapp.Repo]

# Configures the endpoint
config :myapp, Myapp.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qZ62iz/tZg84OXuQrt4x9qPYUsFmq1AqXe3M6ssFM5y8ldOAmUB4bAv/Br/miF0G",
  render_errors: [view: Myapp.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Myapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Myapp.Users.User,
  repo: Myapp.Repo,
  module: Myapp,
  router: Myapp.Web.Router,
  messages_backend: Myapp.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :confirmable, :registerable]

config :coherence, Myapp.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

config :phoenix_oauth2_provider, PhoenixOauth2Provider,
  module: Myapp,
  current_resource_owner: :current_user,
  repo: Myapp.Repo,
  resource_owner: Myapp.Users.User

