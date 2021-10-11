defmodule Solver do
  def find_largest_prime_divider(number) do
    calculator(number, 2) # starting with the smallest prime number
  end

  defp calculator(input_number, start) when input_number == start do
    input_number
  end

  defp calculator(input_number, start) do
    if rem(input_number,start) == 0 do
      calculator(trunc(input_number / start), start) # trunc() is to receive an integer
    else
      calculator(input_number, start + 1)
    end
  end
end

Solver.find_largest_prime_divider(600851475143)
|> IO.inspect(label: "This is the number you are looking for")
