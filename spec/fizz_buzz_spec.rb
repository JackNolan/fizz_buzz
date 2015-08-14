require 'spec_helper'

describe FizzBuzz do
  let(:fizz_buzz) { FizzBuzz.new }
  describe '#display' do
    it 'prints fizz or buzz a given number' do
      expect(STDOUT).to receive(:puts).with('Fizz')
      expect(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(3).and_return('Fizz')

      fizz_buzz.display(3)
    end

    it 'prints fizz or buzz a set of given number' do
      expect(STDOUT).to receive(:puts).with('Fizz').ordered
      expect(STDOUT).to receive(:puts).with('Buzz').ordered
      expect(STDOUT).to receive(:puts).with('FizzBuzz').ordered
      expect(STDOUT).to receive(:puts).with('7').ordered

      expect(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(3).and_return('Fizz')
      expect(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(5).and_return('Buzz')
      expect(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(15).and_return('FizzBuzz')
      expect(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(7).and_return('7')

      fizz_buzz.display(3, 5, 15, 7)
    end

    it 'raises an exception if no arguments are passed' do
      expect{ fizz_buzz.display }.to raise_exception(ArgumentError)
    end
  end
end
