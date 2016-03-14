json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone, :address, :food_id
  json.url order_url(order, format: :json)
end
