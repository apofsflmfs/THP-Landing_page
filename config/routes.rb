Rails.application.routes.draw do
  root 'static_pages#home'
  post '/subscribe', to: 'static_pages#subscribe', as: :subscribe_nl
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
