require './lib/calci.rb'

describe Calci do

  before do
    @calc = Calci.new
  end

  context "adding numbers given in string" do

    it "should return 0 if string is empty" do
      sum = @calc.add("")
      expect(sum).to eq(0)
    end

    it "should return sum of numbers" do
      sum = @calc.add("1,2")
      expect(sum).to eq(3)
    end

    it "should return sum of numbers if new line is given in string" do
      sum = @calc.add("1\n2,3")
      expect(sum).to eq(6)
    end

    it "should return sum of numbers if custom delimeter is given" do
      sum = @calc.add("//;\n1\n2;5")
      expect(sum).to eq(8)
      sum = @calc.add("//?\n1\n2?5?6")
      expect(sum).to eq(14)
    end

    it "should return exception if number string contains any negative number" do
      expect{
        @calc.add("1\n2,-3,-4")
      }.to raise_error(Calci::NegativeNumber, "negative numbers not allowed -3, -4")
    end
  end
end
