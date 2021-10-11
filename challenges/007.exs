defmodule PrimeFinder do
    def search(primes_list, limit) do
        next_primes_list = calculate_next_prime(primes_list, List.first(primes_list))
        if Kernel.length(next_primes_list) == limit do
            List.first(next_primes_list)
        else
            search(next_primes_list, limit)
        end
    end

  defp calculate_next_prime(my_list, max) do
    new_max = max + 1
    if prime?(new_max) == true do
        [ new_max | my_list]
    else
        calculate_next_prime(my_list, new_max)
    end
  end

  defp prime?(n) do
    floored_sqrt = :math.sqrt(n)
        |> Float.floor
        |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end
end

PrimeFinder.search([13, 11, 7, 5, 3, 2], 10001)
|> IO.inspect(label: "This is the number you are looking for")
