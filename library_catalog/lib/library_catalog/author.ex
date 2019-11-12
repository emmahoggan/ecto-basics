defmodule LibraryCatalog.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :firstname, :string
    field :lastname, :string
    has_many :books, LibraryCatalog.Book
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:firstname, :lastname])
    |> validate_required([:firstname, :lastname])
  end
end
