require_relative './constants.rb'

class ExpensesSolver
  include Constants
  def initialize(expenses=integers)
    @expenses = expenses
  end

  def solve
    find_number_pair[0] * find_number_pair[1]
  end

  private

  def find_number_pair
    @expenses.collect do |expense|
      @expenses.filter { |i| i + expense == 2020 }
    end.flatten
  end
end
