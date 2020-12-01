require_relative '../constants.rb'
require_relative '../expenses_solver.rb'

RSpec.describe ExpensesSolver do
  include Constants
  let(:expenses_solver) { ExpensesSolver.new }

  describe '#solve' do
    it 'returns correct value' do
      expect(expenses_solver.solve).to eq 437931
    end
  end
end
