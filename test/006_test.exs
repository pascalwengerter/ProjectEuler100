defmodule Euler6Test do
  use ExUnit.Case

  import DiffSumsquareSquaresum, only: [calculate: 1]

  describe "Testing the calculate function" do
    test "Calculate the difference between the sum of the squares between 1 and 2 and the square of the sum between 1 and 2" do
      assert calculate(1..2) == 4 # 9 - 5
    end

    test "Calculate the difference between the sum of the squares between 1 and 10 and the square of the sum between 1 and 10" do
      assert calculate(1..10) == 2640 # 3025 - 385
    end
  end

end
