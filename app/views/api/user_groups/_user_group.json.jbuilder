json.id user_group.id
json.name user_group.name
json.expenses user_group.expenses.each do |expense|
  json.id expense.id
  json.description expense.description
  json.date expense.date
  json.amount expense.amount
  json.expense_category expense.expense_category.category
end
json.expenses_by_category user_group.expenses_by_category
json.total_expenses user_group.total_expenses
json.shared_expenses user_group.shared_expenses.round(2)


