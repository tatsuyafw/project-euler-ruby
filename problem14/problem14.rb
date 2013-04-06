# Project Euler / Problem 14

require './collatz'

limit = 10 ** 6

c = Collatz.new
max = res = 1
(1...limit).each do |i|
  tmp = c.term_length(i)
  if tmp > max
    res = i
    max = tmp
  end
end
puts res
