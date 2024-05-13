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

p fibs(8)
