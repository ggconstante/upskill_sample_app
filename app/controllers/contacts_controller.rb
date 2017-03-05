class ContactsController < ApplicationController
    # contacts is the controller and new is the action
    def new
        @contact = Contact.new
    end
    
    # you do this when you save/create something in the database
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            # right after the client is save. record the name, email and comments which is the body 
            # and params creates a hash..really important 
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comments]
            ContactMailer.contact_email(name, email, body).deliver
            redirect_to new_contact_path, notice: "Message sent "
        else 
            redirect_to new_contact_path, notice: "ERROR occured! "
        end
    end
    
    # this is a private method and Rails require you to do this 
    private
        def contact_params
            # this is the security feature in Rails avoiding persistent request
            params.require(:contact).permit(:name, :email, :comments)
        end
end

