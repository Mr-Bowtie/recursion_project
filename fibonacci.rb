require 'pry'

def fibs(n)
  fib_arr = []
  0.upto(n) do |i|
    if i == 0
      fib_arr << 0
    elsif i == 1
      fib_arr << 1
    else
      fib_arr << fib_arr[i - 1] + fib_arr[i - 2]
    end
  end
  fib_arr
end

def fibs_rec(n)
  return [0] if n.zero?
  return [0, 1] if n == 1

  arr = fibs_rec(n - 1)
  arr << arr[-2] + arr[-1]
end

p fibs(13)
p fibs_rec(13)
