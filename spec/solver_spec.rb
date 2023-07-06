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
end