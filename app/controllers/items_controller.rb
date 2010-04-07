class ItemsController < InheritedResources::Base
  before_filter :require_user
  belongs_to    :board
  actions       :index, :create, :destroy
  respond_to    :js

  has_scope :completed, :type => :boolean
  has_scope :pending,   :type => :boolean

  def complete
    resource.complete!
    respond_to do |format|
      format.js
    end
  end
end
