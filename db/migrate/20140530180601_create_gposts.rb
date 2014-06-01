class CreateGposts < ActiveRecord::Migration
  def change
    create_table :gposts do |t|
      t.string :name
      t.string :desc
      t.references :gallery
      t.attachment :photo
      t.attachment :image

      t.timestamps
    end
  end
end
