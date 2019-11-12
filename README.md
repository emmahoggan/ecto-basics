# ecto-basics
The purpose of this project is to illustrate the basics of using Ecto in an Elixir project, using the example of a backend/database for a library catalog.

## Prerequisites
Before starting you'll need postgres up and running using port 5432.  If you already have postgres up, you may need to edit the connection details in `library_catalog/config/config.exs`. 

You can use the following commands (with docker running) to start up a Postgres Docker container that exposes port 5432. The first command to pull the postgres image is only needed if you haven't previously done so.
```
$ docker pull postgres
$ docker run --rm --name library_catalog -e POSTGRES_PASSWORD=ectoexample -d -p 5432:5432 postgres
```

## Setup

To run the project, clone the repo and then from within the `library_catalog/` folder, run the following commands:

```
$ mix deps.get
$ mix ecto.create
$ mix ecto.migrate
```

Once the project is up, you can run `iex -S mix` to test out your changes in interactive mode. You'll need to run `recompile()` in order for iex to reflect changes if you edit the project. Here are a few examples of things you can try with the basic project:

Create a book object using book schema:
```
iex(#)> %LibraryCatalog.Book{title: "Gulliver's Travels", available: false}
```

Create the changeset method on the book schema:
```
iex(#)> LibraryCatalog.Book.changeset(%LibraryCatalog.Book{}, %{"title" => "Alice in Wonderland", "available" => true})
```

Insert a book into the books table:
```
iex(#)> LibraryCatalog.BookService.add_book(%{"title" => "Lord of the Rings"})
```

Query for a book you've inserted:
```
iex(#)> LibraryCatalog.Repo.get_by(LibraryCatalog.Book, title: "Lord of the Rings")
```

## Exercises

For these exercises you'll want to start on the master branch.  The "with-authors" branch is updated with the completed exercises.

1. Add a migration to create an authors table. Assume each book can only have one author, but authors can be associated with multiple books.  You'll need to update the book table/schema to account for the author. [How?](docs/AddMigration.md)

2. Add an author schema and update the book schema with the new author id field. [How?](docs/AddSchema.md)

3. Add a changeset to the author schema. [How?](docs/AddChangeset.md)

4. Run a query [How?](docs/AddQuery.md)