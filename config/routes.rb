Rails.application.routes.draw do
  get 'sessions/new'
    root  'pages#login'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

    get   'pages/adminTop'
    get   'pages/userTop'
    resources :pages, :only => [:show], to: 'pages#user'

    get   'userboxes/index'

    get   'adtests/index'
    get   'adtests/delete'
    get   'adtests/new'
      resources :adtests
    resources :adtests
    
    get   'adusers/index'
    get   'adusers/delete'
    get   'adusers/new'
      resources :adusers

    get   'tests/test'
    get   'tests/check'
    get   'tests/result'
end
