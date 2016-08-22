Rails.application.routes.draw do

  devise_for :users, controllers:{
  	omniauth_callbacks: 'users/omniauth_callbacks'
  }

  post '/custom_sign_up', to 'users/omniauth_callbacks#custom_sign_up'

  root 'main#home'

  # 1 Mandar una petición a Facebook
  # 2 Facebook retorna a nuestra app callback_url
  # 3 Procesar la info de Fbook
  # 4 Autenticar al usuario o crear uno nuevo



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
