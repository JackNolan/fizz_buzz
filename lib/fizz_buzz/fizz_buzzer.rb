class FizzBuzzer
  FIZZ = 'Fizz'
  BUZZ = 'Buzz'

  # Accepts an number and returns it fizzbuzzed
  def fizz_or_buzz(number)
    if divisable?(number, 15)
      FIZZ + BUZZ
    elsif divisable?(number, 3)
      FIZZ
    elsif divisable?(number, 5)
      BUZZ
    else
      number.to_s
    end
  end

  private

  def divisable?(numerator, denominator)
    (numerator % denominator) == 0
  end
end
