class UserGroup < ApplicationRecord
  has_many :users
  has_many :expenses

  def total_expenses
    # TODO; only sum current month
    expenses.sum { |h| h[:amount] }
  end

  def shared_expenses
    total_expenses / users.length
  end

  def expenses_by_category
    data = expenses.map do |expense|
      {
        id: expense.id,
        description: expense.description,
        date: expense.date,
        amount: expense.amount,
        expense_category: expense.expense_category.category
      }
    end
    data
      .group_by { |expense| expense[:expense_category] }
      .sort.to_h
  end

end