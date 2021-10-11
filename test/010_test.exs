defmodule Euler10Test do
  use ExUnit.Case

  import PrimeSumer, only: [calculate_all_below: 1]

  describe "Run PrimeSumer calculate_all_below function" do
    test "Find sum of all the primes below 10" do
      assert calculate_all_below(10) == 17
    end

    test "Find sum of all the primes below 2.000.000" do
      assert calculate_all_below(2_000_000) == 142_913_828_922
    end
  end
end
