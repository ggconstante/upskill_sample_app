Rails.application.routes.draw do
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'info', to: 'pages#info'
    get 'qa', to: 'pages#qa'
end
