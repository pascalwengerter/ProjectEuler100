defmodule Euler4Test do
  use ExUnit.Case

  import Palindromefinder, only: [run: 2]

  describe "Testing the run function" do
    test "Find palindromes from 10 to 100" do
      assert run(10, 100) == 9009
    end

    test "Find palindromes from 100 to 999" do
      assert run(100, 999) == 906_609
    end
  end
end
