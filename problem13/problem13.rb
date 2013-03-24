# Project Euler / Problem 13

require 'pp'

data = []
while line = gets
  data << line.chomp.to_i
end

puts data.inject(:+).to_s[0...10]
