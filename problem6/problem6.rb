# Project Euler / Problem 6

def sum_of_square(n)
  (1..n).map {|v| v * v }.inject(:+)
end

def square_of_sum(n)
  (1..n).inject(:+) ** 2
end

n = 100
puts square_of_sum(n) - sum_of_square(n)
