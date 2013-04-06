# collatz

class Collatz
  def initialize
    @mem = {}
  end

  def term_length(n)
    return 1 if n == 1
    return @mem[n] if @mem[n]

    return @mem[n] = term_length(succ(n)) + 1
  end

  private

  def succ(n)
    if n.even?
      n / 2
    else
      3 * n + 1
    end
  end
end
