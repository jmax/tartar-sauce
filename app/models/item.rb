class Item < ActiveRecord::Base
  belongs_to :board

  validates_presence_of :description, :board

  named_scope :completed, {:conditions => { :completed => true }}
  named_scope :pending,   {:conditions => { :completed => false }}

  def complete!
    transaction do
      self.update_attributes(:completed => true)
    end
  end
end
