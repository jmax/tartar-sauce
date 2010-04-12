class Board < ActiveRecord::Base
  belongs_to :user
  has_many   :items

  validates_presence_of :name, :description, :user

  has_friendly_id :name, :use_slug => true

#  default_scope :conditions => {:archived => false}, :order => 'created_at DESC'
  scope         :without, lambda { |some_id| where('id != ?', some_id) }
end
