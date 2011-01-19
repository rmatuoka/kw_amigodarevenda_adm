ActionController::Routing::Routes.draw do |map|
  map.resources :resellers

  map.resources :updates

  map.resources :polls, :has_many => :poll_questions
  map.resources :notices
  map.resources :offers
  map.resources :downloads

  map.root :controller => "downloads"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
