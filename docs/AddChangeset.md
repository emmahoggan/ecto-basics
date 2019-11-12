# Add a changeset to the author schema

Add a changeset method to `author.ex`.  You might also add in some validation to ensure that certain fields are required.

```
def changeset(struct, params) do
  struct
  |> cast(params, [:firstname, :lastname])
  |> validate_required([:firstname, :lastname])
end
```