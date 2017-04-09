class Contact < ActiveRecord::Base
  after_create :send_contact_email
  validates :name, presence: true
  validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}

  def send_contact_email
    NotificationMailer.contact(self).deliver_later
  end
end
