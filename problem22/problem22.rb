# Project Euler / Problem 22

require 'csv'

def alphabetical_value(str)
  up_str = str.upcase
  base_code = ?A.bytes[0] - 1

  res = 0
  up_str.each_char do |ch|
    res += ch.bytes[0] - base_code
  end
  return res
end

def main
  if ARGV.empty?
    puts "Needs input file"
    exit 1
  end

  fname = ARGV[0]
  names = []
  CSV.foreach(fname, "r") do |row|
    names = row
  end
  names.sort!

  res = 0
  names.each_with_index do |name, i|
    res += alphabetical_value(name) * (i + 1)
  end

  puts res
end

if $0 == __FILE__
  main
end
