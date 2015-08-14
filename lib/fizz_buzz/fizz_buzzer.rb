class FizzBuzzer
  FIZZ = 'Fizz'
  BUZZ = 'Buzz'

  # Accepts an number and returns it fizzbuzzed
  def fizz_or_buzz(number)
    fizz_buzz_string(number) || number.to_s
  end

  private

  def fizz_buzz_string(number)
    string = "#{fizz(number)}#{buzz(number)}"
    string.empty? ? nil : string
  end

  def fizz(number)
    FIZZ if divisible?(number, 3)
  end

  def buzz(number)
    BUZZ if divisible?(number, 5)
  end

  def divisible?(numerator, denominator)
    (numerator % denominator) == 0
  end
end
