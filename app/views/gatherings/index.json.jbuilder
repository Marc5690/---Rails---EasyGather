json.array!(@gatherings) do |gathering|
  json.extract! gathering, :id, :name, :company, :gather_level, :x_coords, :y_coords
  json.url gathering_url(gathering, format: :json)
end
