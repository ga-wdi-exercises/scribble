class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true
  has_many :posts, dependent: :destroy
  
  has_secure_password
end
