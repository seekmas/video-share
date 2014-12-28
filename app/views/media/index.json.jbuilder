json.array!(@media) do |medium|
  json.extract! medium, :id, :subject, :comment, :image
  json.url medium_url(medium, format: :json)
end
