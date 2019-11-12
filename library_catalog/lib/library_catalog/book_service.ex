defmodule LibraryCatalog.BookService do

  import Ecto.Query, only: [from: 2]

  def get_book_availability(title) do
    query = from b in "books", where: b.title == ^title, select: b.available
    LibraryCatalog.Repo.all(query)
  end

  def add_book(params) do
    %LibraryCatalog.Book{}
    |> LibraryCatalog.Book.changeset(params)
    |> LibraryCatalog.Repo.insert()
  end
end
