# Load all dependencies
Dir["lib/fizz_buzz/*"].each do |f|
  require "./#{f}"
end

class FizzBuzz
  attr_reader :fizz_buzzer

  def initialize
    @fizz_buzzer = FizzBuzzer.new 
  end

  def display(numbers)
    numbers.each do |number|
      puts fizz_buzzer.fizz_or_buzz(number)
    end
  end
end
