defmodule PrimeNumber do

  import Integer
  @step 2

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
  @spec prime?(pos_integer) :: boolean
  def prime?(1), do: false
  def prime?(2), do: true
  def prime?(number) when is_even(number), do: false
  def prime?(number), do: prime?(number, 3)
  defp prime?(number, divider) do
    last_possible_divider = trunc(:math.sqrt(number) + 1)
    cond do
      divider > last_possible_divider -> true
      (divider <= last_possible_divider and rem(number, divider) == 0) -> false
      true -> prime?(number, divider + @step)
    end
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
  @spec nth_prime(pos_integer) :: integer
  def nth_prime(position) when position == 1, do: 2
  def nth_prime(position), do: nth_prime(position, 2, 3)
  defp nth_prime(position, position, number) when position > 0, do: number
  defp nth_prime(position, current_position, number) when position > 0 do
    new_position = if (prime?(number + @step)), do: current_position + 1, else: current_position
    nth_prime(position, new_position, number + @step)
  end
end
