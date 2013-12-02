class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer    :gallery_id
      t.string     :type
      t.string     :title
      t.string     :description
      t.string     :dimensions
      t.datetime   :completed_date
      t.string     :medium
      t.string     :image_file

      t.timestamps
    end
    add_index :pieces, :gallery_id
  end
end
