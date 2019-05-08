defmodule PhoenixExOauth2ProviderDemoWeb.API.V1.UserView do
  use PhoenixExOauth2ProviderDemoWeb, :view
  alias PhoenixExOauth2ProviderDemoWeb.API.V1.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id}
  end
end
