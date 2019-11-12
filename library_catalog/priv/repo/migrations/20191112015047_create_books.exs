defmodule LibraryCatalog.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string, null: false
      add :available, :boolean, default: false
    end
  end
end
