require_relative '../puzzle_solver.rb'

RSpec.describe PuzzleSolver do
  include PuzzleSolver
  describe '#solve' do
    it 'returns correct answer' do
      expect(solve('./spec/test-input.txt')).to eq 3
    end
  end
end
