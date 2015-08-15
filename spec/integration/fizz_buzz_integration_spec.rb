describe FizzBuzz, :integration do
  let(:fizz_buzz) { FizzBuzz.new(output: output) }
  let(:output)    { TestingOutput.new }

  describe '#display_each' do
    let(:set)       { [1,3,5,7,11,15,35,23,45] }
    let(:results)   { %w(1 Fizz Buzz 7 11 FizzBuzz Buzz 23 FizzBuzz) }

    it 'correctly writes a set of numbers to the output' do
      fizz_buzz.display_each(set)
      expect(output.get_writes).to eq results
    end  
  end

  describe '#display' do
    it 'correctly writes a single number to the ouput' do
      fizz_buzz.display(3)
      expect(output.get_writes).to eq ['Fizz']
    end
  end
end
