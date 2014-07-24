class Micropost < ActiveRecord::Base
  validates :content, :length => {:maximum => 5}
  attr_accessible :content, :user_id
  belongs_to :user_id
end
