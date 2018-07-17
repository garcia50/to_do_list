class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :password
  validates :password, confirmation: { case_sensitive: true }
  
  has_many :to_do_lists, dependent: :destroy
end
