defmodule PhoenixExOauth2ProviderDemoWeb.Router do
  use PhoenixExOauth2ProviderDemoWeb, :router
  use Pow.Phoenix.Router
  use PhoenixOauth2Provider.Router, otp_app: :phoenix_ex_oauth2_provider_demo

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :protected do
    plug Pow.Plug.RequireAuthenticated,
      error_handler: Pow.Phoenix.PlugErrorHandler
  end

  pipeline :api_protected do
    plug ExOauth2Provider.Plug.VerifyHeader, otp_app: :phoenix_ex_oauth2_provider_demo, realm: "Bearer"
    plug ExOauth2Provider.Plug.EnsureAuthenticated
  end

  scope "/" do
    pipe_through :browser

    pow_routes()
  end

  scope "/" do
    pipe_through :api

    oauth_api_routes()
  end

  scope "/" do
    pipe_through [:browser, :protected]

    oauth_routes()
  end

  scope "/", PhoenixExOauth2ProviderDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api/v1", PhoenixExOauth2ProviderDemoWeb.API.V1 do
    pipe_through [:api, :api_protected]

    resources "/accounts", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixExOauth2ProviderDemoWeb do
  #   pipe_through :api
  # end
end
