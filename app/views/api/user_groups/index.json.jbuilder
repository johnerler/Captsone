json.array! @user_group.each do |user_group|
  json.partial! "user_group.json.jbuilder", user_group: user_group
end