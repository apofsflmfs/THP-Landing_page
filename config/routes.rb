Rails.application.routes.draw do
  root 'static_pages#home'
  post '/subscribe', to: 'static_pages#subscribe', as: :subscribe_nl

end
