Rails.application.routes.draw do
  get 'errors/not_found'
  root 'static_pages#home'
  get '/montpellier', to: 'static_pages#montpellier'
  get '/jobseeker', to: 'static_pages#jobseeker'
  post '/subscribe', to: 'static_pages#subscribe', as: :subscribe_nl
  get '/signed', to: 'static_pages#signed'
  get '/404' => 'errors#not_found'
end
