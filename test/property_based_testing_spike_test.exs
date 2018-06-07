defmodule PropertyBasedTestingSpikeTest do
  use ExUnit.Case
  doctest PropertyBasedTestingSpike

  test "greets the world" do
    assert PropertyBasedTestingSpike.hello() == :world
  end
end
