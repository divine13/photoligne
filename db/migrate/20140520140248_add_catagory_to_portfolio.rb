class AddCatagoryToPortfolio < ActiveRecord::Migration
  def change
      add_column :portfolios, :catagory, :string
  end
end
