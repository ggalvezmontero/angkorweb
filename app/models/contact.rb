class Contact < ActiveRecord::Base
  after_create :send_contact_email
  validates :name, presence: true
  validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}

  def send_contact_email
    ActionCorreo.contact(self).deliver_later
  end
end
