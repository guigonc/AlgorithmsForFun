def knight_shortest_path(*params)
  y, x = params.sort
  return 4 if x == y && [1, 2].include?(x)
  return 3 if x + y == 1

  delta = x-y
  if (delta >= y)
    (delta) - 2 * ((delta - y) / 4)
  else
    sum = x + y
    reference = (sum) / 2 - sum % 2
    result = reference / 3
    result += 1 if (reference % 3 != 0)
    result * 2 + sum % 2
  end
end
