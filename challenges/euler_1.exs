# # Old solution
# defmodule Solver do
#   def filter_range do
#     Range.new(3,999)
#     |> Enum.filter(fn x -> (rem(x, 3) == 0) or (rem(x, 5) == 0) end)
#   end
#
#   def sum_list([head | tail], acc) do
#     sum_list(tail, acc + head)
#   end
#
#   def sum_list([], acc) do
#     acc
#   end
# end
#
# Solver.filter_range
# |> Solver.sum_list(0)
# |> IO.inspect(label: "This is the number you are looking for")

# New solution
Range.new(3,999)
|> Enum.filter(fn x -> (rem(x, 3) == 0) or (rem(x, 5) == 0) end)
|> Enum.reduce(0, fn i, acc -> i + acc end)
|> IO.inspect(label: "This is the number you are looking for")
