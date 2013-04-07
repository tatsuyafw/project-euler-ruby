# Project Euler / Problem 19

require 'date'

s = Date.new(1901, 1, 1)
e = Date.new(2000, 12, 31)
puts (s..e).select {|day| day.day == 1 && day.wday == 0 }.length
