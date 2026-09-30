defmodule Calculator do
  def run do
    num1 = prompt_for_number("Enter the first number: ")
    num2 = prompt_for_number("Enter the second number: ")

    IO.puts("Sum: #{num1 + num2}")
    IO.puts("Difference: #{num1 - num2}")
    IO.puts("Product: #{num1 * num2}")
  end

  defp prompt_for_number(prompt) do
    input = IO.gets(prompt) |> String.trim()

    if String.contains?(input, ".") do
      String.to_float(input)
    else
      String.to_integer(input)
    end
  end
end

Calculator.run()
