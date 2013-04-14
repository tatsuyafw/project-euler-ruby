# Project Euler / Problem 25

fib = Enumerator.new do |yielder|
  i1, i2 = 1, 1
  loop do
    yielder.yield i1
    i1, i2 = i2, i1 + i2
  end
end

digit_size = 1000
puts fib.with_index.lazy.drop_while {|v| v.to_s.size < digit_size }.first[1] + 1
