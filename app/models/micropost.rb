# == Schema Information
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  validates :content, :length => {:maximum => 5}
  attr_accessible :content, :user_id
  belongs_to :user_id
end
