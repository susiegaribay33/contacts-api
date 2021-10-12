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

  def contacts_all
    contact_one = Contact.first
    contact_two = Contact.find_by(first_name: "Mario")
    render json: {
      contact_one: contact_one.as_json, 
      contact_two: contact_two.as_json
    }
  end

end
