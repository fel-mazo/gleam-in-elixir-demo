defmodule Demo1 do
  @moduledoc """
  Documentation for `Demo1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Demo1.hello()
      :world

  """
  def hello do
    :world
  end

  def say_hi_from_gleam do
    :hello.hey()
  end
end
