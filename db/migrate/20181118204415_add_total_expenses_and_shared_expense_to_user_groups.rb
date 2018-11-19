class AddTotalExpensesAndSharedExpenseToUserGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :user_groups, :total_expenses, :decimal, precision: 9, scale: 2
    add_column :user_groups, :shared_expenses, :decimal, precision: 9, scale: 2
  end
end
