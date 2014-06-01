class Gallery < ActiveRecord::Base
  has_attached_file :photo
  has_attached_file :image
  has_many :gposts
   validates_presence_of :name, uniqueness:true
  #default_scope order: "gallery.created_at DESC"
end
