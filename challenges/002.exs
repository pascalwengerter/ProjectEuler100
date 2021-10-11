defmodule SumPrimesFromTo do
  def calculate(min, max) do
    find_fibonaccis_from(min, max)
      |> Enum.filter(fn x -> rem(x, 2) == 0 end)
      |> Enum.reduce(0, fn i, acc -> i + acc end)
  end

  defp find_fibonaccis_from(start, max) do
    calculate_next_fibonacci([start, 1], max)
  end

  defp calculate_next_fibonacci(my_list, max) do
    if List.first(my_list) >= max do
      my_list
    else
      new_list = [ Enum.take(my_list, 2) |> Enum.sum() | my_list ]
      calculate_next_fibonacci(new_list, max)
    end
  end
end
