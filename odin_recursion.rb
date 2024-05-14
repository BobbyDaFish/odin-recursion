# frozen-string-literal: true

require 'pry-byebug'

def fibs_rec(num, iteration = num, fib = [])
  fib << 0 if fib.empty?
  return fib if num <= 1 || iteration.zero?

  if fib.length == 1
    fib << 1
  elsif iteration > 1

    fib << fib[-1] + fib[-2]
  end
  iteration -= 1
  fibs_rec(num, iteration, fib)
end

def merge_sort(array)
  left_array = array[0..((array.length / 2).ceil - 1)]
  right_array = array[((array.length / 2).floor)..]
  sorted_array = []
  left_array = merge_sort(left_array) if left_array.length > 1
  a = 0
  b = 0
  if left_array[a].nil?
    sorted_array << right_array[b..]
  elsif right_array[b].nil?
    sorted_array << left_array[a..]
  elsif left_array[a] <= right_array[b]
    sorted_array << left_array[a]
    a += 1
  else
    sorted_array << right_array[b]
    b += 1
  end
  sorted_array
end

p merge_sort([1, 5, 9, 3, 7])
