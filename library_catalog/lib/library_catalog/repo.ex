defmodule LibraryCatalog.Repo do
  use Ecto.Repo,
    otp_app: :library_catalog,
    adapter: Ecto.Adapters.Postgres
end
