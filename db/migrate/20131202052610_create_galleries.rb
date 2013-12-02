class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string 		:title
      t.string 		:description
      t.string 		:author
      t.string 		:image_file

      t.timestamps
    end
  end
end
