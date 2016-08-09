def largest_subarray_sum_indexes(array)
  head, *tail = array
  largest_sum_start = largest_sum_end = sum_start = sum_end = 0
  # sum = largest_sum = array.first
  sum = largest_sum = head

  tail.each { |current_element|
    sum += current_element

    sum_end += 1
    if (current_element > sum)
      sum_start = sum_end
      sum = current_element
    end

    if (sum > largest_sum)
      largest_sum = sum
      largest_sum_start = sum_start
      largest_sum_end = sum_end
    end
  }

  [largest_sum_start, largest_sum_end]
end

array = [2, -4, 6, 8, -10, 100, -6, 5]
largest_subarray_sum_indexes = largest_subarray_sum_indexes(array)
p "para o array #{array.to_s} o maior subarray começa na posição #{largest_subarray_sum_indexes[0]} e termina na posição #{largest_subarray_sum_indexes[1]}"
