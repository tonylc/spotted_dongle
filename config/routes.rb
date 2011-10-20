SpottedDongle::Application.routes.draw do
  scope '/admin', :controller => :admin do
    root :to => 'admin#index'
  end

  match 'collect_email' => 'home#collect_email', :via => :post
  root :to => 'home#coming_soon'
end
