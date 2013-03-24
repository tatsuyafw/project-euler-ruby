# Project Euler / Problem 12

def factors_num(n)
  i = 1
  res = 0
  while i * i <= n
    if n % i == 0
      res += 2
    end
    i += 1
  end
  return res
end

def triangle_num(n)
  n * (n + 1) / 2
end

limit = 5 * 10 ** 2
n = 1
while true
  triangle = triangle_num(n)
  if factors_num(triangle) > limit
    puts triangle
    break
  end
  n += 1
end
