SpottedDongle::Application.routes.draw do
  match 'collect_email' => 'home#collect_email', :via => :post
  root :to => 'home#coming_soon'
end
