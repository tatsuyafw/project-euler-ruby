# Project Euler / Problem 2

def fib(n)
  @memo = Hash.new do |memo, n|
    if n < 2
      n
    else
      memo[n] = memo[n-1] + memo[n-2]
    end
  end
  @memo[n]
end

limit = 4 * 10 ** 6
terms = []
n = 1
while fib(n) < limit
  terms << fib(n)
  n += 1
end
puts terms.select{|v| v.even? }.inject(:+)
