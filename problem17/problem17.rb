# Project Euler / Problem 17

class UnsupportedError < StandardError; end

class Integer

  def to_word
    if self <= 0 || self > 1000
      raise UnsupportedError
    end

    words = {
      1 => "one", 2 => "two",   3 => "three", 4 => "four", 5 => "five",
      6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
      11 => "eleven",  12 => "twelve",  13 => "thirteen",  14 => "fourteen",
      15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
      19 => "nineteen", 20 => "twenty",  30 => "thirty", 40 => "forty",  50 => "fifty",
      60 => "sixty",    70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "hundred",
    }

    if self == 1000
      return "one thousand"
    elsif self == 100
      return "one hundred"
    elsif words[self]
      return words[self]
    end

    if self > 100
      quotient  = self / 100
      remainder = self % 100
      if remainder == 0
        return words[quotient] + " hundred"
      else
        return words[quotient] + " hundred and " + remainder.to_word
      end
    elsif self > 20
      quotient  = self / 10
      remainder = self % 10
      return words[quotient * 10] + " " + remainder.to_word
    end
  end
end

puts (1..1000).inject(0) {|sum, i| sum + i.to_word.gsub(/\s/, "").length }
