Rails.application.routes.draw do
  get 'waters/index'
  root 'waters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
