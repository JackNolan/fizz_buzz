# Load all dependencies
require_relative "fizz_buzz/fizz_buzzer"

class FizzBuzz
  attr_reader :fizz_buzzer, :output

  def initialize(output: STDOUT)
    @fizz_buzzer = FizzBuzzer.new 
    @output      = output
  end

  # Takes a number and displays its fizz buzz
  def display(number)
    display_each([number])
  end

  # Takes an enumerable list of numbers
  # Displays each number's corresponding fizz buzz.
  def display_each(numbers)
    numbers.each do |number|
      output.puts fizz_buzzer.fizz_or_buzz(number)
    end
  end
end
