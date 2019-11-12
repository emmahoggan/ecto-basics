# Add a migration to create the authors table

From the `library_catalog` folder, run the following to create two new migrations:
```
$ mix ecto.gen.migration create_authors
$ mix ecto.gen.migration alter_books
```

This will create two new migrations files prefaced with their timestamps.  In the CreateAuthors migration, create a new table with some columns for names, etc.
```
defmodule LibraryCatalog.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :firstname, :string, null: false
      add :lastname, :string, null: false
    end
  end
end
```

When we alter the books table, add a new `author_id` column and use `references(:authors)` to indicate that it is a foreign key.

```
defmodule LibraryCatalog.Repo.Migrations.AlterBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add_if_not_exists :author_id, references(:authors)
    end
  end
end
```

Finally, run the migration:
```
$ mix ecto.migrate
```