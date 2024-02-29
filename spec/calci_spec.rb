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
      sum = @calc.add("1\n2")
      expect(sum).to eq(3)
    end

    it "should return sum of numbers if custom delimeter is given" do
      sum = @calc.add("//;\n1\n2")
      expect(sum).to eq(3)
    end
  end
end
