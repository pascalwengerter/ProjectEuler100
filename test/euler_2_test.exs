defmodule Euler2Test do
  use ExUnit.Case

  import Solver, only: [find_fibonaccis_from: 2]

  describe "Testing the find_fibonaccis_from function" do
    test "Find primes from 1 to 10" do
      assert find_fibonaccis_from(1, 10) == [13, 8, 5, 3, 2, 1, 1]
    end

    test "Find primes from 11 to 100" do
      assert find_fibonaccis_from(11, 100) == [151, 93, 58, 35, 23, 12, 11, 1]
    end
  end

end
