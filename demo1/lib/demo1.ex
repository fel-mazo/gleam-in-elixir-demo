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

  def gleam_packages do
    generator = :friendly_id.new_generator() |> :friendly_id.set_generator_separator("X")

    :friendly_id.generate(generator)
  end
end
