describe FizzBuzz, :integration do
  describe '#display' do
    let(:set)       { [1,3,5,7,11,15,35,23,45] }
    let(:results)   { %w(1 Fizz Buzz 7 11 FizzBuzz Buzz 23 FizzBuzz) }
    let(:fizz_buzz) { FizzBuzz.new(output: output) }
    let(:output)    { TestingOutput.new }

    it 'correctly writes to the output' do
      fizz_buzz.display(set)
      expect(output.get_writes).to eq results
    end  
  end
end
