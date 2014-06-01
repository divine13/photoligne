class Portfolio < ActiveRecord::Base
  has_attached_file :pic
  validates :name,  presence: true, uniqueness: true

  has_many :posts

end
