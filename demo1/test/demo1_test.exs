defmodule Demo1Test do
  use ExUnit.Case
  doctest Demo1

  test "greets the world" do
    assert Demo1.hello() == :world
  end
end
