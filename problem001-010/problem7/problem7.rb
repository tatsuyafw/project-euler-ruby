# Project Euler / Problem 7

require 'prime'

p_enum = Prime.each(10 ** 10)
count = 10001
res = 0
count.times do
  res = p_enum.next
end

puts res
