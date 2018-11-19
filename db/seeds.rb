# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserGroup.create!(name: "Erler Household", total_expenses: 2400.00, shared_expenses: 1200.00)
UserGroup.create!(name: "Smith Household", total_expenses: 3000.00, shared_expenses: 1000.00)

User.create!(name: "John", email: "john@email.com", user_group_id: 1, password: "password", password_confirmation: "password")
User.create!(name: "Carri", email: "carri@email.com", user_group_id: 1, password: "password", password_confirmation: "password")
User.create!(name: "Jim", email: "jim@email.com", user_group_id: 2,  password: "password", password_confirmation: "password")
User.create!(name: "Paul", email: "paul@email.com", user_group_id: 2, password: "password", password_confirmation: "password")
User.create!(name: "Nicole", email:"nicole@email.com", user_group_id: 2,  password: "password", password_confirmation: "password")


ExpenseCategory.create!(category: "rent")
ExpenseCategory.create!(category: "utilities")
ExpenseCategory.create!(category: "groceries")
ExpenseCategory.create!(category: "leisure")
ExpenseCategory.create!(category: "miscellaneous")


Expense.create!(description: "Chewy", date: Date.new(2018, 12, 8), amount: 164.32, expense_category_id: 2, user_id: 1, user_group_id: 1)
Expense.create!(description: "Tony's", date: Date.new(2018, 12, 11), amount: 89.73, expense_category_id: 3, user_id: 2, user_group_id: 1)
Expense.create!(description: "Comcast", date: Date.new(2018, 12, 26), amount: 68.94, expense_category_id: 2, user_id: 1, user_group_id: 1)
Expense.create!(description: "Apartment Rent", date: Date.new(2018, 12, 1), amount: 1475, expense_category_id: 1, user_id: 1, user_group_id: 1)
Expense.create!(description: "Thai Food", date: Date.new(2018, 12, 12), amount: 38.96, expense_category_id: 4, user_id: 2, user_group_id: 1)
Expense.create!(description: "Apartment Rent", date: Date.new(2018, 12, 1), amount: 1300, expense_category_id: 1, user_id: 3, user_group_id: 2)
Expense.create!(description: "Take Out", date: Date.new(2018, 12, 4), amount: 80.43, expense_category_id: 4, user_id: 4, user_group_id: 2)
Expense.create!(description: "Big Screen TV", date: Date.new(2018, 12, 30), amount: 80.43, expense_category_id: 5, user_id: 4, user_group_id: 2)
Expense.create!(description: "Mariano's", date: Date.new(2018, 12, 18), amount: 234.56, expense_category_id: 3, user_id: 5, user_group_id: 2)
Expense.create!(description: "Beer", date: Date.new(2018, 12, 10), amount: 150.99, expense_category_id: 4, user_id: 5, user_group_id: 2)
