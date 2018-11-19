class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :description
      t.date :date
      t.decimal :amount, precision: 9, scale: 2
      t.integer :expense_category_id
      t.integer :user_id
      t.integer :user_group_id

      t.timestamps
    end
  end
end
