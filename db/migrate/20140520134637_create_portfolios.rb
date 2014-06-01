class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.text :desc
      t.integer :nopic
      t.references :post

      t.timestamps
    end
  end
end
