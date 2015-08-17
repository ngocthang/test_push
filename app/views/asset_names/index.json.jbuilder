json.array!(@asset_names) do |asset_name|
  json.extract! asset_name, :id, :game, :score
  json.url asset_name_url(asset_name, format: :json)
end
