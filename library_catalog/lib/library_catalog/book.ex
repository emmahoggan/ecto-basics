defmodule LibraryCatalog.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :available, :boolean, default: false
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:title, :available])
    |> validate_required([:title])
  end
end
