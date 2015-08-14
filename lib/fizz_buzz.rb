# Load all dependencies
Dir["lib/fizz_buzz/*"].each do |f|
  require "./#{f}"
end

class FizzBuzz
  attr_reader :fizz_buzzer, :output

  def initialize(output: STDOUT)
    @fizz_buzzer = FizzBuzzer.new 
    @output      = output
  end

  # Takes an enumerable list of numbers
  # Displays each number's corresponding fizz buzz.
  def display(numbers)
    numbers.each do |number|
      output.puts fizz_buzzer.fizz_or_buzz(number)
    end
  end
end
