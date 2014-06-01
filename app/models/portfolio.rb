class Portfolio < ActiveRecord::Base
  has_attached_file :pic,
                    :storage=> :dropbox, :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates :name,  presence: true, uniqueness: true

  has_many :posts

end
