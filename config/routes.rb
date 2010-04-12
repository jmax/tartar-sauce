TartarSauce::Application.routes.draw do
  # Authentication System
  resource  :account
  resource  :user_session
  resources :users
  match     'login'  => 'user_sessions#new',     :as => :login
  match     'logout' => 'user_sessions#destroy', :as => :logout
  match     'join'   => 'users#new',             :as => :join

  # Frontend rewrites
  resource  :dashboard
  resources :boards do
      resources :items do
      member do
        put :complete
      end
    end
  end
end
