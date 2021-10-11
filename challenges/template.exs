# Short summary of the challenge goes here

defmodule Example do
  def solver(input_value) do
    private_solver(input_value)
    |> IO.inspect(label: "Hello from the public function")
  end

  defp private_solver(input_value_passed) do
    IO.inspect(label: "Hello from the private function")
  end
end
