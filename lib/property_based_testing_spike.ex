defmodule PropertyBasedTestingSpike do
  @moduledoc """
  Documentation for PropertyBasedTestingSpike.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PropertyBasedTestingSpike.hello
      :world

  """
  def hello do
    :world
  end

  def add_stuff(value) when value >= 100 do
    value + 4
  end

  def add_stuff(value) when value < 0 do
    value - 2
  end

  def add_stuff(value) do
    value + 2
  end
end
