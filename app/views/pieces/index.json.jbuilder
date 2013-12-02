json.array!(@pieces) do |piece|
  json.extract! piece, :gallery_id, :type, :title, :description, :dimensions, :completed_date, :medium, :image_file
  json.url piece_url(piece, format: :json)
end
