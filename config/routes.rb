Rails.application.routes.draw do
    # pages is controller and home is action 
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'info', to: 'pages#info'
    get 'qa', to: 'pages#qa'
    # this gives you all the access for the links
    # you do this by running rails/rake routes
    # this is how you clean up routes resources : contacts, only: [:new, :create] 
    resources :contacts 
    get 'contacts/new', to: 'contacts#new' , as: 'contacts_new'
end
