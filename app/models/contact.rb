class Contact < ActiveRecord::Base
    
    # this is to make sure user don't leave anything blank on the form
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true

end