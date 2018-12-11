# json.array! @user_group.each do |user_group|
#   json.partial! "user_group.json.jbuilder", user_group: user_group
# end
json.partial! "user_group.json.jbuilder", user_group: @user_group

# json.array! @user_groups.each do |user_group|
  # json.id @user_group.id
  # json.name @user_group.name
  # json.expenses @user_group.expenses
  # json.total_expenses @user_group.total_expenses
  # json.shared_expenses @user_group.shared_expenses.round(2)
