use Timex
start = Duration.now
Enum.map(1..104_743, fn x -> IO.puts PrimeNumber.prime?(x) end)
finish = Duration.now
IO.puts Duration.diff(finish, start, :seconds)
