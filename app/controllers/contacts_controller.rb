class ContactsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact
      @contact.save
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.permit(:id, :name, :email, :phone, :business, :position, :message)
  end
end