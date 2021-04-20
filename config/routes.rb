Rails.application.routes.draw do
  get '/auditions', to: 'auditions#index'
end
