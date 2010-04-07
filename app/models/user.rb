class User < ActiveRecord::Base
  has_many :boards

  acts_as_authentic
  has_friendly_id :login, :use_slug => true
end
