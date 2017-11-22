require 'minitest/autorun'
require './rpn_calculator.rb'

class RpnCalculatorTest < Minitest::Test
  describe RpnCalculator do
    before do
      @calculator = RpnCalculator.new
    end

    describe "#initialize" do
      it "initialize the class correctly" do
        @calculator.operands.must_equal []
        @calculator.evaluation.must_equal []
      end
    end

    describe "#calculate" do
      it "returns the right result with right parameters " do
        @calculator.calculate(["4", "5", "+"]).must_equal 9.0
      end
      it "returns nil as result with wrong parameters" do
        @calculator.calculate(["+", "5", "5"])
      end
    end
  end
end