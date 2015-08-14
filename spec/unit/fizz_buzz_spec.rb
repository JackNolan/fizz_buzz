describe FizzBuzz do
  let(:test_output) { TestingOutput.new }
  let(:fizz_buzz)   { FizzBuzz.new(output: test_output) }
  
  describe '#display' do
    it 'prints fizz or buzz for a set of given numbers' do
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(3).and_return('Fizz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(5).and_return('Buzz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(15).and_return('FizzBuzz')
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).with(7).and_return('7')

      fizz_buzz.display([3, 5, 15, 7])

      expect(test_output.get_writes).to eq %w(Fizz Buzz FizzBuzz 7)
    end

    it 'accepts a range of numbers' do
      expect(test_output).to receive(:puts).with('Fizz').exactly(6).times
      allow(fizz_buzz.fizz_buzzer).to receive(:fizz_or_buzz).and_return('Fizz')

      fizz_buzz.display(1..6)
    end
  end

  describe '#initialize' do
    context "optional display" do
      let(:output)    { TestingOutput.new }
      let(:fizz_buzz) { FizzBuzz.new(output: output) }

      it 'writes to the display' do
        expect{fizz_buzz.display([2,3,4])}.to change{output.get_writes.count}.from(0).to(3)
      end  

      it 'defaults to STDOUT' do
        expect( FizzBuzz.new.output).to eq STDOUT
      end
    end
  end
end
