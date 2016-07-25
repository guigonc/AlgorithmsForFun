require './lib/fibonacci'

limit = 4000000

p "A soma dos elementos pares da sequencia de fibonacci até 4 milhoes é #{Fibonacci.sum_even(Fibonacci.last_smaller_than(limit))}"
