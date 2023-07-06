require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns the factorial of a number' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(6)).to eq(720)
    end

    it 'raises an exception for negative integers' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  # When N is divisible by 3, return "fizz".
  # When N is divisible by 5, return "buzz".
  # When N is divisible by 3 and 5, return "fizzbuzz".
  # Any other case, return N as a string (e.g. say N is 7 then return "7").

  context "When a number is divisible by 3" do
    it "returns \'fizz\'" do
      solver = Solver.new
      expect(solver.fizzbuzz(219)).to eq('fizz')
    end
  end 

end
