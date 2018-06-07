defmodule PropertyBasedTestingSpikeTest do
  use ExUnit.Case
  use ExUnitProperties
  doctest PropertyBasedTestingSpike

  test "greets the world" do
    assert PropertyBasedTestingSpike.hello() == :world
  end

  test "add_two/1 manual test" do
    assert PropertyBasedTestingSpike.add_two(2) == 4
    refute PropertyBasedTestingSpike.add_two(1) == 4
  end
end
