class Item < ActiveRecord::Base
  belongs_to :board

  validates_presence_of :description, :board

  scope :completed, where(:completed => true)
  scope :pending,   where(:completed => false)

  def complete!
    transaction do
      self.update_attributes(:completed => true)
    end
  end
end
