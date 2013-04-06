# Project Euler / Problem 4

class Fixnum
  def palindrome?
    str = self.to_s
    str == str.reverse
  end
end

nums = []
(100...1000).each do |i|
  (100...1000).each do |j|
    nums << i * j
  end
end
nums.sort.reverse_each do |num|
  if num.palindrome?
    puts num
    exit 0
  end
end
