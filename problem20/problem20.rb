# Project Euler / Problem 20

puts (1..100).inject(:*).to_s.each_char.inject(0){|sum, str| sum + str.to_i }
