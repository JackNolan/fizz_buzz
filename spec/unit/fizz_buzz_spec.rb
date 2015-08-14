require 'spec_helper'

describe FizzBuzz do
  let(:fizz_buzz) { FizzBuzz.new }
  describe '#display' do
    it 'prints fizz or buzz a set of given number' do
      expect(STDOUT).to receive(:puts).with('Fizz').ordered
      expect(STDOUT).to receive(:puts).with('Buzz').ordered
      expect(STDOUT).to receive(:puts).with('FizzBuzz').ordered
      expect(STDOUT).to receive(:puts).with('7').ordered

      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(3).and_return('Fizz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(5).and_return('Buzz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(15).and_return('FizzBuzz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(7).and_return('7')

      fizz_buzz.display([3, 5, 15, 7])
    end

    it 'accepts a range of numbers' do
      expect(STDOUT).to receive(:puts).with('Fizz').exactly(6).times
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).and_return('Fizz')

      fizz_buzz.display(1..6)
    end
  end
end
