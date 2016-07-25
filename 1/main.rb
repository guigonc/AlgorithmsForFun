require './lib/multiplier_sum'

limit = 1000
numbers = [3, 5]
multiplier_sum = MultiplierSum.new(*numbers)

p "a soma de todos os multiplos de #{numbers.join(', ')} entre 1 e #{limit} é #{multiplier_sum.get_sum_below(limit)}"
