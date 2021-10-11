defmodule Checker do
  def run(start, divisor_range) do
    if divisible_by_all(start, divisor_range) == true && start != 0 do
      start
    else
      new_start = start + 20
      run(new_start, divisor_range)
    end
  end

  defp divisible_by_all(input, divisor_range) do
    Enum.map(divisor_range, fn x -> rem(input, x) == 0 end)
    |> Enum.all?(fn x -> x == true end)
  end
end
