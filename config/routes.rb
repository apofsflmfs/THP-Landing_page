Rails.application.routes.draw do
  root 'static_pages#home'
  get '/montpellier', to: 'static_pages#montpellier'
  get '/jobseeker', to: 'static_pages#jobseeker'
  post '/signed', to: 'static_pages#subscribe', as: :subscribe_nl
  get '/signed', to: 'static_pages#signed'
end
