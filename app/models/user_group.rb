class UserGroup < ApplicationRecord
  has_many :users
  has_many :expenses

  def total_expenses
    expenses.sum { |h| h[:amount] }
  end

  def shared_expenses
    total_expenses / users.length
  end
end