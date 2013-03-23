# Project Euler / Problem 9

def pythagorean_triplet?(a, b, c)
  a ** 2 + b ** 2 == c ** 2
end

res = 0
limit = 1000
a_limit = limit / 2
(1...a_limit).each do |a|
  b_limit = limit - a
  (a...b_limit).each do |b|
    c = limit - a - b
    if pythagorean_triplet?(a, b, c)
      puts a * b * c
    end
  end
end
