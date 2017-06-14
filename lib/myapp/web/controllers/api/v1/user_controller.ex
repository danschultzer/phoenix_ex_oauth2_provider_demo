defmodule Myapp.Web.API.V1.UserController do
  use Myapp.Web, :controller

  action_fallback Myapp.Web.FallbackController

  def index(conn, _params) do
    users = [ExOauth2Provider.Plug.current_resource_owner(conn)]
    render(conn, "index.json", users: users)
  end
end
