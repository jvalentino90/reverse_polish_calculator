require_relative 'rpn_calculator.rb'
require 'pry'
calc = RpnCalculator.new
print "Welcome to Reverse Polish Calculator\n"
print "> "

while user_input = gets
  case user_input.chomp!
  when "q"
    print "End of Calculator\n"
    break
  else
    calc.calculate(user_input.split(" "))
  end
  print "> "
end
