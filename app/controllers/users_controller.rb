class UsersController < InheritedResources::Base
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user,    :only => [:show, :edit, :update]

  actions :all, :except => :destroy

  create!(:notice => "Account registered!") { account_url }
  update!(:notice => "Account updated!") { account_url }

  protected
    def resource
      @user = @current_user
    end
end
