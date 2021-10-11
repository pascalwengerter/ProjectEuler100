defmodule PrimeSumer do
    def calculate_all_below(n) do
        find_all_primes_below(n)
        |> Enum.reduce(fn x, acc -> x + acc end)
    end

    defp find_all_primes_below(m) do
        Enum.filter(1..m, fn x -> prime?(x) end)
    end

    defp prime?(n) when n in [2, 3], do: true
    defp prime?(n) do
        floored_sqrt = :math.sqrt(n)
            |> Float.floor
            |> round
        !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
    end
end
