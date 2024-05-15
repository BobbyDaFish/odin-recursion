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
  right_array = array.pop((array.length / 2).floor)
  left_array = array
  left_array = merge_sort(left_array) if left_array.length > 1
  right_array = merge_sort(right_array) if right_array.length > 1
  merge(left_array, right_array)
end

def merge(left_array, right_array)
  sorted_array = []
  until left_array.empty? && right_array.empty?
    if left_array.empty?
      sorted_array << right_array.delete_at(0)
    elsif right_array.empty?
      sorted_array << left_array.delete_at(0)
    elsif left_array[0] <= right_array[0]
      sorted_array << left_array.delete_at(0)
    else
      sorted_array << right_array.delete_at(0)
    end
  end
  sorted_array
end

puts 'Initializing fibs_rec recursive method.'
p fibs_rec(5)
puts 'initializing merge_sort recursive method.'
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
