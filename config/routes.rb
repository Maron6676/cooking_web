Rails.application.routes.draw do

  #　顧客用
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }


  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ゲストログイン
  get '/guest-login', to: 'guest_sessions#new', as: 'guest_login'
  post '/guest-login', to: 'guest_sessions#create'
  delete '/guest-logout', to: 'guest_sessions#destroy', as: 'guest_logout'

end
