# Project Euler / Problem 18

mem = []
mem << gets.chomp.to_i
while line = gets
  data = line.chomp.split.map!{|str| str.to_i }

  tmp_ary = []
  data.each_with_index do |d, i|
    if i == 0
      tmp_ary[0] = mem[0] + data[0]
    elsif i == data.size - 1
      tmp_ary[i] = mem[i-1] + data[i]
    else
      n = (mem[i-1] > mem[i]) ? mem[i-1] : mem[i]
      tmp_ary[i] = n + data[i]
    end
  end
  mem = tmp_ary
end

puts mem.max
