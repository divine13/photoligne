class Post < ActiveRecord::Base
  has_attached_file :image,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  has_attached_file :photo,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  #has_attached_file :asset
  has_many :assets
  accepts_nested_attributes_for :assets

  validates_presence_of(:name)
  validates_uniqueness_of(:name)
  belongs_to :portfolio
end
