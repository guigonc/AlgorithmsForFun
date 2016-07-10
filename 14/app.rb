require './lib/collatz'

limit = 1000000
p "O número que gera a maior sequencia de collatz até #{limit} é #{Collatz.longest_sequence_start(1000000)}"
