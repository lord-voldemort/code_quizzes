require './symbol_roundup'

describe Array, "#symbol_roundup" do

  let(:array) { [:sym1, :sym2, 3, "hello", {:sym3=>:poop}, [:sym4], :sym5] }

  it "should return an array with only symbols in it" do
    array.symbol_roundup.should eq([:sym1, :sym2, :sym5])
  end

  it "should not modify the original array" do
    array.symbol_roundup
    array.should eq([:sym1, :sym2, 3, "hello", {:sym3=>:poop}, [:sym4], :sym5])
  end
  
end

describe Array, "#symbol_roundup!" do

  let(:array) { [:sym1, :sym2, 3, "hello", {:sym3=>:poop}, [:sym4], :sym5] }

  it "should return an array with only symbols in it" do
    array.symbol_roundup.should eq([:sym1, :sym2, :sym5])
  end

  it "should modify the original array" do
    array.symbol_roundup!
    array.should eq([:sym1, :sym2, :sym5])
  end
  
end