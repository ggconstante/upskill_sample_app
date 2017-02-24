Rails.application.routes.draw do
    # pages is controller and home is action 
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'info', to: 'pages#info'
    get 'qa', to: 'pages#qa'
    resources :contacts 
    get 'contacts/new', to: 'contacts#new'  
end
