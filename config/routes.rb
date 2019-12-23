Rails.application.routes.draw do
  get 'yet_another/index'
  get 'yet_another/update'
  get 'yet_another/edit'
  get 'yet_another/hello'
  # get 'play/index'
  # get ':controller(/:action(/:id))'
  match "/", :to => "play#index", :via => :get
  match ':controller(/:action(/:id))', :via => :get

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
