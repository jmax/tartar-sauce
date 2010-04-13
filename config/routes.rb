TartarSauce::Application.routes.draw do
  root :to => "dashboards#show"

  # Authentication System
  devise_for :users, :path_names => {
    :sign_in => 'login', :sign_out => 'logout', :sign_up => 'register'
  }

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

