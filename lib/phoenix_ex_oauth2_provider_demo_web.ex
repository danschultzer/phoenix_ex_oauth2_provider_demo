defmodule PhoenixExOauth2ProviderDemoWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use PhoenixExOauth2ProviderDemoWeb, :controller
      use PhoenixExOauth2ProviderDemoWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: PhoenixExOauth2ProviderDemoWeb

      import Plug.Conn
      import PhoenixExOauth2ProviderDemoWeb.Gettext
      alias PhoenixExOauth2ProviderDemoWeb.Router.Helpers, as: Routes
    end
  end

  def view do
    quote do
      use Phoenix.View,
        root: "lib/phoenix_ex_oauth2_provider_demo_web/templates",
        namespace: PhoenixExOauth2ProviderDemoWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 1, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import PhoenixExOauth2ProviderDemoWeb.ErrorHelpers
      import PhoenixExOauth2ProviderDemoWeb.Gettext
      alias PhoenixExOauth2ProviderDemoWeb.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import PhoenixExOauth2ProviderDemoWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
