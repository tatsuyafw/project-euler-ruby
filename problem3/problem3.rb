# Project Euler / Problem 3

require 'prime'

num   = 600851475143
limit = Math.sqrt(num).to_i
limit.downto(1) do |v|
  if num % v == 0 && Prime.prime?(v)
    puts v
    exit 0
  end
end
