# Project Euler / Problem 23

def proper_divisors(n)
  res = [1]
  i = 2
  while i * i <= n
    if n % i == 0
      res << i
      if n / i != i
        res << (n / i)
      end
    end
    i += 1
  end
  return res
end

def abundant_number?(n)
  return n < proper_divisors(n).inject(:+)
end

def main
  limit = 28123

  abundant_nums = []
  (1..limit).each do |i|
    abundant_nums << i if abundant_number?(i)
  end

  mem = Array.new(limit + 1, false)
  abundant_nums.each do |i|
    abundant_nums.each do |j|
      break if i + j > limit
      mem[i + j] = true
    end
  end

  res = 0
  mem.each_with_index do |flag, i|
    res += i if !flag
  end
  puts res
end

if $0 == __FILE__
  main
end

