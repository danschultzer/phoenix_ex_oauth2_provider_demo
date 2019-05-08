defmodule PhoenixExOauth2ProviderDemo.OauthAccessTokens.OauthAccessToken do
  use Ecto.Schema
  use ExOauth2Provider.AccessTokens.AccessToken, otp_app: :phoenix_ex_oauth2_provider_demo

  schema "oauth_access_tokens" do
    access_token_fields()

    timestamps()
  end
end
