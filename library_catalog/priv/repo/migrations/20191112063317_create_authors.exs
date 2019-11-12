defmodule LibraryCatalog.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :firstname, :string, null: false
      add :lastname, :string, null: false
    end
  end
end
