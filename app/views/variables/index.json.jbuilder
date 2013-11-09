json.array!(@variables) do |variable|
  json.extract! variable, :modname, :var, :user_id
  json.url variable_url(variable, format: :json)
end
