# Project Euler / Problem 15

def fact(n)
  (1..n).inject(:*)
end

row = 20
col = 20
n = row + col
puts fact(n) / (fact(row) * fact(n - row))
