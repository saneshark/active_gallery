json.array!(@pages) do |page|
  json.extract! page, :title, :seo, :body, :view_template, :layout_template, :slug, :link_url, :path, :visible, :deleted, :deletable, :draft, :position, :parent_id, :lft, :rgt, :depth
  json.url page_url(page, format: :json)
end
