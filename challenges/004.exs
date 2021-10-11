defmodule Palindromefinder do
    def run(from, to) do
        check_if_palindrome = &compare/1
        Range.new(from, to)
        |> Enum.map(fn(x) ->
            Enum.map(Range.new(from, to), fn(y) -> y * x end)
            |> Enum.filter(fn z -> check_if_palindrome.(z) end)
        end)
        |> Enum.flat_map(fn x -> x end)
        |> Enum.max()
    end

    defp compare(input_number) do
        input_string = Integer.to_string(input_number)
        input_string_length = String.length(input_string)
        if rem(input_string_length, 2) == 0 do
            substrings = String.split_at(input_string, div(input_string_length, 2))
            elem(substrings, 0) == String.reverse(elem(substrings, 1))
        else
            first_half = String.slice(input_string, 0..(div(input_string_length, 2) -1))
            second_half = String.slice(input_string, (div(input_string_length, 2) +1)..input_string_length)
            first_half == String.reverse(second_half)
        end
    end
end
