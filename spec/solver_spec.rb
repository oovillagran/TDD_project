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

  context 'When a number is' do
    it "divisible by 3 returns 'fizz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(219)).to eq('fizz')
    end

    it "divisible by 5 returns 'buzz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(250)).to eq('buzz')
    end

    it "divisible by 3 and divisible by 5 at the same time, then returns 'fizzbuzz'" do
      solver = Solver.new
      expect(solver.fizzbuzz(255)).to eq('fizzbuzz')
    end

    it 'not divisible by 3 neither is divisible by 5, then returns the number' do
      solver = Solver.new
      expect(solver.fizzbuzz(341)).to eq(341)
    end
  end
end
