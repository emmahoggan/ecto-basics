defmodule LibraryCatalog.BookService do
  def add_book(params) do
    %LibraryCatalog.Book{}
    |> LibraryCatalog.Book.changeset(params)
    |> LibraryCatalog.Repo.insert()
  end
end
