class AddDescToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :desc, :string
  end
end
