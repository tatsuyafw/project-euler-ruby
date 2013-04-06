# collatz_spec

require './collatz'

describe "collatz" do
  before :each do
    @c = Collatz.new
  end

  [
    [1, 1],
    [13, 10],
    [40, 9],
  ].each do |num, length|
    it "Collatz#term_length(#{num}) => #{length}" do
      @c.term_length(num).should == length
    end
  end
end
