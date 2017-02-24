class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    # you do this when you save/create something in the database
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent "
        else 
            redirect_to new_contact_path, notice: "ERROR occured! "
        end
    end
    
    # this is a private method
    private
        def contact_params
            # this is the security feature in Rails avoiding persistent request
            params.require(:contact).permit(:name, :email, :comments)
        end
end

