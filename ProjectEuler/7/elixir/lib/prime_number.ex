defmodule PrimeNumber do
  def prime?(1), do: false
  def prime?(number, divider \\ 2)
  def prime?(number, divider) when divider > div(number, 2), do: true
  def prime?(number, divider) when (divider <= div(number, 2) and rem(number, divider) == 0), do: false
  def prime?(number, divider) do
    prime?(number, divider + 1)
  end

  def nth_prime(position) when position == 1, do: 2
  def nth_prime(position, current_position \\ 2, number \\ 3)
  def nth_prime(position, position, number) when position > 0, do: number
  def nth_prime(position, current_position, number) when position > 0 do
    step = 2
    cond do
      (prime?(number + step)) ->
        IO.puts(number + step)
        nth_prime(position, current_position + 1, number + step)
      (!prime?(number + step)) -> nth_prime(position, current_position, number + step)
    end
  end
end
