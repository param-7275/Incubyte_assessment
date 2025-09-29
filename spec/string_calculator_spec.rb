require "rspec"
require_relative "../app/string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      calc = StringCalculator.new
      expect(calc.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      calc = StringCalculator.new
      expect(calc.add("5")).to eq(5)
    end

    it "returns the sum of two numbers" do
      calc = StringCalculator.new
      expect(calc.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple numbers" do
      calc = StringCalculator.new
      expect(calc.add("1,25,13,4")).to eq(43)
    end

    it "handles newline as a delimiter" do
      calc = StringCalculator.new
      expect(calc.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      calc = StringCalculator.new
      expect(calc.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for negative numbers" do
      calc = StringCalculator.new
      expect { calc.add("1,-2,3,-5") }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end
