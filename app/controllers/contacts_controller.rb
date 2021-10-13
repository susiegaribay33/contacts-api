class ContactsController < ApplicationController
  def first_contact
    contact_one = Contact.first
    render json: contact_one.as_json
  end

  def contacts_all
    contacts = Contact.all
    render json: contacts.as_json
  end

end
