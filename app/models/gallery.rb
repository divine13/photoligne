class Gallery < ActiveRecord::Base
  has_attached_file :photo,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  has_attached_file :image,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  has_many :gposts
   validates_presence_of :name, uniqueness:true
  #default_scope order: "gallery.created_at DESC"
end
