Rails.application.routes.draw do
  
  resources :clubs do
  	resources :rules
  end
  resources :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
