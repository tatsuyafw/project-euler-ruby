# Project Euler / Problem 11

require 'pp'

def slice_arrays(arrays, x, y, dx, dy, count)
  res = []
  size = arrays.size
  count.times do |i|
    tx = x + dx * (i+1)
    ty = y + dy * (i+1)
    return [] if tx < 0 || ty < 0 || tx >= size || ty >= size

    res << arrays[ty][tx]
  end
  return res
end

def candidates_arrays(arrays)
  count = 4
  res = []
  for y in (0...arrays.size)
    for x in (0...arrays[0].size)
      [
        [1, 0],  [1, 1],    [0, 1],  [-1, 1],
        [-1, 0], [-1, -1],  [0, -1], [1, -1],
      ].each do |dx, dy|
        res << slice_arrays(arrays, x, y, dx, dy, count)
      end
    end
  end
  return res
end

def problem11
  arrays = []
  while line = gets
    arrays << line.chomp.split.map{|str| str.to_i }
  end

  res = 0
  candidates_arrays(arrays).each do |array|
    product = array.inject(1) {|pro, num| pro * num }
    res = [product, res].max
  end
  puts res
end

if $0 == __FILE__
  problem11
end
