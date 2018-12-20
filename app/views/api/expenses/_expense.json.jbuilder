json.id expense.id
json.description expense.description
json.date expense.date
json.amount expense.amount
json.expense_category expense.expense_category
json.user_group expense.user_group
json.current_user expense.user
json.total_expenses expense.total_expenses
json.shared_expenses expense.shared_expenses.round(2)
# json.receipt_image_url rails_blob_url(post.receipt_image) if post.receipt_image.attachment