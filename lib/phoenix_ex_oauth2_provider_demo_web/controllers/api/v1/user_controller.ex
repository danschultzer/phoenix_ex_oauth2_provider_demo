defmodule PhoenixExOauth2ProviderDemoWeb.API.V1.UserController do
  use PhoenixExOauth2ProviderDemoWeb, :controller

  action_fallback PhoenixExOauth2ProviderDemoWeb.FallbackController

  def index(conn, _params) do
    users = [ExOauth2Provider.Plug.current_resource_owner(conn)]
    render(conn, "index.json", users: users)
  end
end
