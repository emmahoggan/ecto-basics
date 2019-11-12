# Add a query to get book availability

Add the following to the BookService:

```
import Ecto.Query, only: [from: 2]

def get_book_availability(title) do
  query = from b in "books", where: b.title == ^title, select: b.available
  LibraryCatalog.Repo.all(query)
end
```

From iex, test the new function by running:
```
iex(#)> LibraryCatalog.BookService.get_book_availability("Lord of the Rings")
```