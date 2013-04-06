# Project Euler / Problem 16

puts (2 ** 1000).to_s.each_char.inject(0) {|sum, c| sum + c.to_i}
