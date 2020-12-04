require_relative '../puzzle_solver.rb'

RSpec.describe PuzzleSolver do
  describe '#solve' do
    it 'returns correct answer for sample input' do
      expect(PuzzleSolver.solve('./spec/test-input.txt')).to eq 4
    end
  end

  describe '#solve_part_2' do
    it 'returns correct answer for sample input' do
      expect(PuzzleSolver.solve_part_2('./spec/test-input.txt')).to eq 2
    end
  end
end
