class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :post

      t.timestamps
    end
  end
end
