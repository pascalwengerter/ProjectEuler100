defmodule Euler1Test do
  use ExUnit.Case

  import FindThreeFiveRemainders, only: [calculate_number: 2]

  describe "Testing the calculate_number function" do
    test "Find primes from 3 to 999" do
      assert calculate_number(3, 999) == 233168
    end
  end

end
