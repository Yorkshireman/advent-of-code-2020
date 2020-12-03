require_relative '../puzzle_solver.rb'

RSpec.describe PuzzleSolver do
  include PuzzleSolver
  describe '#solve' do
    it 'returns correct answer' do
      expect(solve({ right: 3, down: 1 }, './spec/test-input.txt')).to eq 3
    end
  end

  describe '#solve_part_2' do
    it 'returns correct answer' do
      expect(solve_part_2('./spec/test-input.txt')).to eq 36
    end
  end
end
