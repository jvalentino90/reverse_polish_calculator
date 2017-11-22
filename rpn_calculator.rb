require 'pry'
class RpnCalculator
  attr_accessor :operands, :evaluation

  def initialize
    @operands = []
    @evaluation = []
  end

  def calculate(expression)
    expression.each do |element|
      case element
        when /^[-+]?[1-9]\d{0,9}(\.(\d){0,2})?$/
          @evaluation.push(element.to_f)
        when "+", "-", "/", "*"
          @operands = @evaluation.pop(2)
          @evaluation.push(@operands[0].send(element, @operands[1]))
        else
          raise ArgumentError, "Only allowed numbers or arithmetic symbols separated with spaces"
      end
    end
    result = @evaluation.last
    print "#{result}\n"
    result
  rescue ArgumentError => e
    print "#{e.message}\n"
  rescue NoMethodError, TypeError
    print "Please check the expression format\n"
  end
end