require 'pry-byebug'

def fibs(num, iteration = num, fib = [])
  fib << 0 if fib.empty?
  return fib if num <= 1
  return fib if iteration.zero?

  if fib.length == 1
    fib << 1
  elsif iteration > 1

    fib << fib[-1] + fib[-2]
  end
  iteration -= 1
  fibs(num, iteration, fib)
end

p fibs(8)
