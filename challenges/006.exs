# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

defmodule DiffSumsquareSquaresum do
    def calculate(input_range) do
        a = input_range
        |> Enum.map(fn x -> x * x end)
        |> Enum.reduce(fn i, acc -> i + acc end)

        b = input_range
        |> Enum.reduce(fn i, acc -> i + acc end)

        (b*b) - a
    end
end

DiffSumsquareSquaresum.calculate(1..100)
|> IO.inspect(label: "This is the number you are looking for")
