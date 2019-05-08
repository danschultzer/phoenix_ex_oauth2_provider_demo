defmodule PhoenixExOauth2ProviderDemo.OauthAccessGrants.OauthAccessGrant do
  use Ecto.Schema
  use ExOauth2Provider.AccessGrants.AccessGrant, otp_app: :phoenix_ex_oauth2_provider_demo

  schema "oauth_access_grants" do
    access_grant_fields()

    timestamps()
  end
end
