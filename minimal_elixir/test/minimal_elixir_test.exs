defmodule MinimalElixirTest do
  use ExUnit.Case
  doctest MinimalElixir

  test "greets the world" do
    assert MinimalElixir.hello() == :world
  end
end
