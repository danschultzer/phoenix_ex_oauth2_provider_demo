defmodule MyappWeb.API.V1.UserController do
  use MyappWeb, :controller

  action_fallback MyappWeb.FallbackController

  def index(conn, _params) do
    users = [ExOauth2Provider.Plug.current_resource_owner(conn)]
    render(conn, "index.json", users: users)
  end
end
