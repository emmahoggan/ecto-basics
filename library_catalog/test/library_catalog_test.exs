defmodule LibraryCatalogTest do
  use ExUnit.Case
  doctest LibraryCatalog

  test "greets the world" do
    assert LibraryCatalog.hello() == :world
  end
end
