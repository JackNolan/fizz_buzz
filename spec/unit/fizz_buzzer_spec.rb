describe FizzBuzzer do
  let(:fizz_buzzer) { FizzBuzzer.new }

  describe '#fizz_or_buzz' do
    it 'returns "Fizz" when the number is divisible by 3' do
      expect(fizz_buzzer.fizz_or_buzz(3)).to eq 'Fizz'
    end

    it 'returns "Buzz" when the number is divisible by 5' do
      expect(fizz_buzzer.fizz_or_buzz(5)).to eq 'Buzz'
    end

    it 'returns "FizzBuzz" when the number is divisible by both' do
      expect(fizz_buzzer.fizz_or_buzz(15)).to eq 'FizzBuzz'
    end

    it 'returns the number when it is not divisible by 3 or 5' do
      expect(fizz_buzzer.fizz_or_buzz(4)).to eq '4'
    end
  end  
end
