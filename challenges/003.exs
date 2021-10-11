defmodule FindLargestPrimeDivider do
  def calculate(number) do
    # starting with the smallest prime number
    calculator(number, 2)
  end

  defp calculator(input_number, start) when input_number == start do
    input_number
  end

  defp calculator(input_number, start) do
    if rem(input_number, start) == 0 do
      # trunc() is to receive an integer
      calculator(trunc(input_number / start), start)
    else
      calculator(input_number, start + 1)
    end
  end
end
