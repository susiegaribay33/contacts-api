class ContactsController < ApplicationController
  def first_contact
    contact_one = Contact.first
    render json: contact_one.as_json
  end

  def contacts_all
    contacts = Contact.all
    render json: contacts.as_json
  end

  def create
    input_first = params[:first_name]
    input_last = params[:last_name]
    input_email = params[:email]
    input_phone = params[:phone_number]
    input_address = params[:address]
    coordinates = Geocoder.coordinates(input_address)
    the_latitude = coordinates[0]
    the_longitude = coordinates[1]

    new_contact = Contact.new(
      first_name: input_first,
      last_name: input_last,
      email: input_email,
      phone_number: input_phone,
      latitude: the_latitude,
      longitude:the_longitude
    )
    new_contact.save
    render json: new_contact.as_json
  end

end
