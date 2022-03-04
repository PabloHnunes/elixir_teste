defmodule ElixirTesteTest do
  use ExUnit.Case
  doctest ElixirTeste

  test "greets the world" do
    assert ElixirTeste.hello() == :world
  end
end
