# RPN Calculator
Reverse polish calculator in ruby

### What's this project about?

This project implements a calculator that solves the four basic arithmetic operations understanding the reverse polish notation.

### How is implemented the solution?

The calculator gets the user input, only numbers (integers or decimals) and arithmetic symbols, acumulating the numbers in an array (```@evaluation```). When a symbol is introduced by the user, the calculator takes the last two numbers and executes the operation between them using ```send``` method. If the expression is right and the operation can be done, the result is printed in the console and saved in ```@evaluation```, if not the calculator returns ```nil``` and prints a message warning the user that either it's not a permitted character or the expression is wrong.

### How should I use the calculator?

Clone project and install ruby version
```
git clone git@github.com:jvalentino90/reverse_polish_calculator.git
cd reverse_polish_calculator
```

Make sure you have installed ruby. If not type this:

On Mac: ```brew install ruby```

On Ubuntu: ```sudo apt-get install ruby-full```

For running calculator: ```ruby script.rb```

If you want to quit the calculator just type the letter q or ctrl + d.


### Running tests

For running test, just type: ```ruby rpn_calculator_test.rb```
