# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence:true, length: { maximum:5 }
  validates :email, presence:true, format: { with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false}
  before_save { |user| user.email = email.downcase}
  validates :password, presence: true, length: {minimum: 6}
  has_secure_password
  validates :password_confirmation, presence: true
  
 
end
