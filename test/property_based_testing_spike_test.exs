defmodule PropertyBasedTestingSpikeTest do
  use ExUnit.Case
  use ExUnitProperties
  doctest PropertyBasedTestingSpike

  test "greets the world" do
    assert PropertyBasedTestingSpike.hello() == :world
  end

  test "add_stuff/1 manual test" do
    assert PropertyBasedTestingSpike.add_stuff(2) == 4
    assert PropertyBasedTestingSpike.add_stuff(200) == 204
    assert PropertyBasedTestingSpike.add_stuff(-7) == -9
    refute PropertyBasedTestingSpike.add_stuff(1) == 4
  end

  test "add_stuff/1 property-based test" do
    check all value <- StreamData.integer(), value = abs(value), value < 100 do
      assert value + 2 == PropertyBasedTestingSpike.add_stuff(value)
    end

    check all value <- StreamData.integer(), value = abs(value) + 100 do
      assert value + 4 == PropertyBasedTestingSpike.add_stuff(value)
    end

    check all value <- StreamData.integer(), value = 0 - abs(value), value < 0 do
      assert value - 2 == PropertyBasedTestingSpike.add_stuff(value)
    end
  end
end
