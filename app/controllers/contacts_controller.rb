class ContactsController < ApplicationController
  def first_contact
    contact_one = Contact.first
    render json: {
      first_name: contact_one.first_name, 
      last_name: contact_one.last_name, 
      email: contact_one.email, 
      phone_number: contact_one.phone_number
    }
  end

end
