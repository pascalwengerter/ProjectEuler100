defmodule Euler5Test do
  use ExUnit.Case

  import Checker, only: [run: 2]

  describe "Testing the run function" do
    test "Check for the smallest positive number that is evenly divisible by all of the numbers from 1 to 3" do
      assert run(0, 1..3) == 60
    end

    test "Check for the smallest positive number that is evenly divisible by all of the numbers from 1 to 7" do
      assert run(0, 1..7) == 420
    end
  end

end
