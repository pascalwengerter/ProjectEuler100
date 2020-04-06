defmodule Solver do
  def find_primes_from_to(start, max) do
    calculate_next_prime([start, 1], max)
  end

  defp calculate_next_prime(my_list, max) do
    if List.first(my_list) >= max do
      my_list
    else
      new_list = [ Enum.take(my_list, 2) |> Enum.sum() | my_list ]
      calculate_next_prime(new_list, max)
    end
  end
end

Solver.find_primes_from_to(2, 4000001)
|> Enum.filter(fn x -> rem(x, 2) == 0 end)
|> Enum.reduce(0, fn i, acc -> i + acc end)
|> IO.inspect(label: "This is the number you are looking for")
