defmodule Euler5Test do
  use ExUnit.Case

  import Checker, only: [run: 2]

  describe "Testing the run function" do
    test "Check for the smallest positive number that is evenly divisible by all of the numbers from 1 to 3, starting at 0" do
      assert run(0, 1..3) == 60
    end

    test "Check for the smallest positive number that is evenly divisible by all of the numbers from 1 to 7, starting at 0" do
      assert run(0, 1..7) == 420
    end

    test "Check for the smallest positive number that is evenly divisible by all of the numbers from 2 to 20, starting at 232790000" do
      assert run(232_790_000, 2..20) == 232_792_560
    end
  end
end
