class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category
  belongs_to :user_group
  # belongs_to :current_user

  def total_expenses
    Expense.sum { |h| h[:amount] }
  end

  def shared_expenses
    total_expenses / user_id 
  end
end

