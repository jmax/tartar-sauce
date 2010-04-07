class UserSessionsController < InheritedResources::Base
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user,    :only => :destroy

  actions :new, :create, :destroy

  create! do |success, failure|
    success.html {
      flash[:notice] = "Login successful!"
      redirect_back_or_default dashboard_url
    }
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default login_url
  end
end
