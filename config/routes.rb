ActionController::Routing::Routes.draw do |map|
  map.resource  :user_session
  map.login     'login',  :controller => 'user_sessions', :action => 'new'
  map.logout    'logout', :controller => 'user_sessions', :action => 'destroy'

  map.resource  :account, :controller => "users"
  map.resources :users
  map.join      'join',   :controller => 'users',         :action => 'new'

  map.resource  :dashboard, :only => :show

  map.resources :boards, :only => [:new, :create, :show] do |board|
    board.resources :items, :only => [:index, :create, :destroy], :member => {:complete => :put}
  end
end
