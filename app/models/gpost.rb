class Gpost < ActiveRecord::Base
  has_attached_file :photo,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  has_attached_file :image,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  default_scope order: 'gposts.created_at DESC'
  belongs_to :gallery
  validates_presence_of :photo
end
