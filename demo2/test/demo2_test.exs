defmodule Demo2Test do
  use ExUnit.Case
  doctest Demo2

  test "greets the world" do
    assert Demo2.hello() == :world
  end
end
