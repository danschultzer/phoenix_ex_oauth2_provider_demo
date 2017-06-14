Myapp.Repo.delete_all Myapp.Users.User

Myapp.Users.User.changeset(%Myapp.Users.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Myapp.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
