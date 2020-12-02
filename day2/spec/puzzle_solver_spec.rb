require_relative '../puzzle_solver.rb'

RSpec.describe PuzzleSolver do
  it 'returns correct answer for sample input' do
    expect(PuzzleSolver.solve('./spec/test-input.txt')).to eq 3
  end
end
