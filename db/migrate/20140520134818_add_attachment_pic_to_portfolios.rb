class AddAttachmentPicToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :portfolios, :pic
  end
end
