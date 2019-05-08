defmodule PhoenixExOauth2ProviderDemo.OauthApplications.OauthApplication do
  use Ecto.Schema
  use ExOauth2Provider.Applications.Application, otp_app: :phoenix_ex_oauth2_provider_demo

  schema "oauth_applications" do
    application_fields()

    timestamps()
  end
end
