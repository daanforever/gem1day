json.array!(@roles) do |role|
  json.extract! role, :ability, :resource, :condition
  json.url role_url(role, format: :json)
end
