# Project Euler / Problem 10

require 'prime'

limit = 2 * 10 ** 6
res = 0
Prime.each(limit) do |prime|
  res += prime
end

puts res
