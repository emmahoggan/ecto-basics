defmodule LibraryCatalog.Repo.Migrations.AlterBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add_if_not_exists :author_id, references(:authors)
    end
  end
end
