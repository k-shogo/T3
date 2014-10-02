json.array!(@declares) do |declare|
  json.extract! declare, :id, :body, :description, :user_id
  json.url declare_url(declare, format: :json)
end
