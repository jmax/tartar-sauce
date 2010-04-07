class DashboardsController < ApplicationController
  before_filter :require_user

  def show
    @boards = @current_user.boards
  end
end
