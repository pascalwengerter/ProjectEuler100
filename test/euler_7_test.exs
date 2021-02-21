defmodule Euler7Test do
  use ExUnit.Case

  import PrimeFinder, only: [search: 2]

  describe "Find the nth prime" do
    test "Find the third prime number" do
      assert search([3, 2], 3) == 5
    end

    test "Find the sixth" do
      assert search([11, 7, 5, 3, 2], 6) == 13
    end
  end

end
