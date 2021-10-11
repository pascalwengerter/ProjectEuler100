defmodule Triplet do
    def solver(sum) do
        s = sum
        a = div(s,3)
        b = div(s,2)
        results = Enum.map(1..b, fn x -> 
            Enum.map(1..a, fn y -> 
                List.wrap([x, y])
            end)
        end)
        |> List.flatten()
        |> Enum.chunk_every(2)
        |> Enum.filter(fn z -> 
            List.first(z)*List.first(z) + List.last(z)*List.last(z) == (s - List.first(z) - List.last(z))*(s - List.first(z) - List.last(z))
        end)
        |> List.flatten()

        c = s - Enum.reduce(results, fn x, acc -> acc + x end)
        List.insert_at(results, 2, c)
        |> List.insert_at(0, "a")
        |> List.insert_at(2, "b")
        |> List.insert_at(4, "c")
        |> Enum.chunk_every(2)
        |> Map.new(fn [k, v] -> {k, v} end)
    end
end

Triplet.solver(1000)
|> IO.inspect(label: "This is the numbers you are looking for")
