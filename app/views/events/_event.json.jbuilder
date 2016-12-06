json.extract! event, :id, :name, :description, :start, :end, :location, :quote, :paid, :customer_id, :created_at, :updated_at
json.url event_url(event, format: :json)