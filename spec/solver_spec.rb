require_relative '../spec/solver_spec'

describe Solver do
  describe '#factorial' do
    context 'when given a non-negative integer' do
      it 'returns the factorial of the number' do
        solver = Solver.new
        expect(solver.factorial(5)).to eq(120)
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when given a negative integer' do
      it 'raises an ArgumentError' do
        solver = Solver.new
        expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    it 'returns the input string reversed' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    context 'when given a number divisible by 3' do
      it 'returns "fizz"' do
        solver = Solver.new
        expect(solver.fizzbuzz(3)).to eq('fizz')
        expect(solver.fizzbuzz(9)).to eq('fizz')
      end
    end

    context 'when given a number divisible by 5' do
      it 'returns "buzz"' do
        solver = Solver.new
        expect(solver.fizzbuzz(5)).to eq('buzz')
        expect(solver.fizzbuzz(10)).to eq('buzz')
      end
    end

    context 'when given a number divisible by both 3 and 5' do
      it 'returns "fizzbuzz"' do
        solver = Solver.new
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
        expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
      end
    end

    context 'when given a number not divisible by 3 or 5' do
      it 'returns the number as a string' do
        solver = Solver.new
        expect(solver.fizzbuzz(7)).to eq('7')
        expect(solver.fizzbuzz(14)).to eq('14')
      end
    end
  end
end
