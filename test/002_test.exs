defmodule Euler2Test do
  use ExUnit.Case

  import SumPrimesFromTo, only: [calculate: 2]

  describe "Testing the calculate function" do
    test "Calculate sum of primes from 1 to 10" do
      assert calculate(1, 10) == 10
    end

    test "Calculate sum of primes from 11 to 100" do
      assert calculate(2, 4000001) == 4613732
    end
  end

end
