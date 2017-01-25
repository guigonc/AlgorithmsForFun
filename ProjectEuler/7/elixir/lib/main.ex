defmodule Main do
  use Timex

  def main(_args) do
    start = Duration.now
    IO.puts PrimeNumber.nth_prime(10_001)
    # Enum.map(1..104_743, fn x -> PrimeNumber.prime?(x) end)
    finish = Duration.now
    IO.puts (Duration.diff(finish, start) |> Duration.to_milliseconds(truncate: true))
  end
end
