class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category
  belongs_to :user_group
end

