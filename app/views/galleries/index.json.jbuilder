json.array!(@galleries) do |gallery|
  json.extract! gallery, :title, :description, :author, :image_file
  json.url gallery_url(gallery, format: :json)
end
