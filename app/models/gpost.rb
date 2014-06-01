class Gpost < ActiveRecord::Base
  has_attached_file :photo
  has_attached_file :image

  default_scope order: 'gposts.created_at DESC'
  belongs_to :gallery
  validates_presence_of :photo
end
