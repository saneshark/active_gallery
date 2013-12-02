class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string     :title
      t.text       :seo
      t.text       :body
      t.string     :view_template
      t.string     :layout_template
      t.string     :slug
      t.string     :link_url
      t.string     :path
      t.boolean    :visible,        :default => true
      t.boolean    :deleted,        :default => false
      t.boolean    :deletable,      :default => true
      t.boolean    :draft,          :default => false
      t.integer    :position
      t.integer    :parent_id
      t.integer    :lft
      t.integer    :rgt
      t.integer    :depth

      t.timestamps
    end
    add_index      :pages, :parent_id
  end
end
