# Add a schema for authors and update the books schema

Create a new file under the `library_catalog` folder called `author.ex`.  Because an author can be associated with many books, and the books table has an author foreign key, we use the `has_many` keyword to link it to the book schema.

```
defmodule LibraryCatalog.Author do
  use Ecto.Schema

  schema "authors" do
    field :firstname, :string
    field :lastname, :string
    has_many :books, LibraryCatalog.Book
  end
end
```

We also need to update the book schema to use the `belongs_to` keyword to indicate that it has a foreign key for the authors table.
```
defmodule LibraryCatalog.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :available, :boolean, default: false
    belongs_to :author, LibraryCatalog.Author
  end
end
```

You can verify that the schemas are correctly associated by running `Ecto.build_assoc/3`.  E.g., in iex run:

```
iex(#)> author = %LibraryCatalog.Author{firstname: "JK", lastname: "Rowling"}
iex(#)> book = Ecto.build_assoc(author, :books, %{title: "Harry Potter"})
```