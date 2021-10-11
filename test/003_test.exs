defmodule Euler3Test do
  use ExUnit.Case

  import FindLargestPrimeDivider, only: [calculate: 1]

  describe "Testing the calculate function" do
    test "Calculate largest prime divider form 2 to 10" do
      assert calculate(10) == 5
    end

    test "Calculate largest prime divider form 2 to 600851475143" do
      assert calculate(600851475143) == 6857
    end
  end

end
