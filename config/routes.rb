Rails.application.routes.draw do
    # pages is controller and home is action 
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'info', to: 'pages#info'
    get 'qa', to: 'pages#qa'
    #resources :contacts #rails way and not working and this creates multiple routes in your routes.rb 
    get 'contacts/newform', to: 'contacts#newform'  
end
