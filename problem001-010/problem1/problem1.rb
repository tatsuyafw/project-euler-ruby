# Project Euler / Problem 1

puts (1...1000).select{|v| v % 3 == 0 || v % 5 == 0}.inject(:+)
