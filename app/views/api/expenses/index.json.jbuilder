json.array! @expense.each do |expense|
  json.partial! "expense.json.jbuilder", expense: expense
end

