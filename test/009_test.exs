defmodule Euler9Test do
  use ExUnit.Case

  import Triplet, only: [solver: 1]

  describe "Run triplet solver function" do
    test "Find Pythagorean triplet for which a + b + c = 1000" do
      assert solver(1000) == %{"a" => 375, "b" => 200, "c" => 425}
    end
  end

end
