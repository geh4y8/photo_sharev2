class User < ActiveRecord::Base
  has_secure_password
  has_many :photos
  has_many :tags
  has_many :photos, through: :tags


  has_many :favorites
  has_many :photos, through: :favorites

  validates_uniqueness_of :email

  has_attached_file :avatar, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  #validates_attachment_presence :avatar
  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end
