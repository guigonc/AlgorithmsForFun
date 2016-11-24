defmodule PrimeNumber do
  @moduledoc """
  Provides functions for dealing with prime numbers
  """

  @doc """
  Checks if the given number is prime

  ## Parameters

    - number: Number to be checked.

  ## Examples

      iex> PrimeNumber.prime?(1)
      false

      iex> PrimeNumber.prime?(2)
      true

  """
  def prime?(1), do: false
  def prime?(number), do: prime?(number, 2)
  defp prime?(number, divider) when divider > div(number, 2), do: true
  defp prime?(number, divider) when (divider <= div(number, 2) and rem(number, divider) == 0), do: false
  defp prime?(number, divider) do
    prime?(number, divider + 1)
  end

  @doc """
  Returns the nth prime number

  ## Parameters

    - position: The nth position.

  ## Examples

      iex> PrimeNumber.nth_prime(2)
      3

      iex> PrimeNumber.nth_prime(3)
      5

  """
  def nth_prime(position) when position == 1, do: 2
  def nth_prime(position), do: nth_prime(position, 2, 3)
  defp nth_prime(position, position, number) when position > 0, do: number
  defp nth_prime(position, current_position, number) when position > 0 do
    step = 2
    cond do
      (prime?(number + step)) -> nth_prime(position, current_position + 1, number + step)
      (!prime?(number + step)) -> nth_prime(position, current_position, number + step)
    end
  end
end
