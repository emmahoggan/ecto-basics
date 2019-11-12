defmodule LibraryCatalog.Book do
  use Ecto.Schema

  schema "books" do
    field :title, :string
    field :available, :boolean, default: false
  end
end
