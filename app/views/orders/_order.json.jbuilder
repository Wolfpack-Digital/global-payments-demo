json.extract! order, :id, :name, :amount, :curency, :created_at, :updated_at
json.url order_url(order, format: :json)
