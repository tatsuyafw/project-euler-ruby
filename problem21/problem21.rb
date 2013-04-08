# Project Euler / Problem 21

def proper_divisor(n)
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

def amicable_number?(n)
  sum = proper_divisor(n).inject(:+)
  return (n != sum) && (n == proper_divisor(sum).inject(:+))
end

puts (1..10000).select {|i| amicable_number?(i) }.inject(:+)
