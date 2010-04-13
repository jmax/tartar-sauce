class BoardsController < InheritedResources::Base
  before_filter :authenticate_user!

  actions :show, :new, :create

  protected
    def begin_of_association_chain
      current_user
    end
end

