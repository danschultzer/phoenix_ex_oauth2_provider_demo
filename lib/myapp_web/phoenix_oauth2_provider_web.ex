defmodule Myapp.PhoenixOauth2Provider.Web do
  @moduledoc false

  def view do
    quote do
      use Phoenix.View, root: "lib/myapp_web/templates/phoenix_oauth2_provider"

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import MyappWeb.Router.Helpers
      import MyappWeb.ErrorHelpers
      import MyappWeb.Gettext
      import Myapp.PhoenixOauth2Provider.ViewHelpers
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
