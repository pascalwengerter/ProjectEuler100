defmodule Euler8Test do
  use ExUnit.Case

  import AdjacentDigits, only: [calculate_products: 2]

  describe "Find the greatest product of neighbouring numbers" do
    test "Find the biggest product of two neighbouring numbers" do
      assert calculate_products(2, '009900') == 81
    end

    test "Find the biggest product of five neighbouring numbers" do
      assert calculate_products(5, '010101010101010102222201010101010010001') == 32
    end
  end

end
