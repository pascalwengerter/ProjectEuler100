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

# Checker.run(0, 2..20)
Checker.run(232790000, 2..20) # returns 232792560
|> IO.inspect(label: "This is the number you are looking for")
