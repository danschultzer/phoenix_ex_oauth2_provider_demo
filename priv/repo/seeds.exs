%PhoenixExOauth2ProviderDemo.Users.User{}
|> PhoenixExOauth2ProviderDemo.Users.User.changeset(%{
  email: "testuser@example.com",
  password: "secret1234",
  confirm_password: "secret1234"})
|> PhoenixExOauth2ProviderDemo.Repo.insert!()
