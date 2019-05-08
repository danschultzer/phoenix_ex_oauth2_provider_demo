defmodule PhoenixExOauth2ProviderDemoWeb.PageController do
  use PhoenixExOauth2ProviderDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
