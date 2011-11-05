SpottedDongle::Application.routes.draw do
  scope '/admin', :controller => :admin do
    root :to => 'admin#index'
  end

  match 'collect-email' => 'home#collect_email', :as => :collect_email, :via => :post

  resources :wedding, :only => [:index]
  root :to => 'home#coming_soon'
end
