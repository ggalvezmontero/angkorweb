class ActionCorreo < ApplicationMailer
  default to: 'aespichan@angkorperu.com'

  def contact(params)
    @contact = params
    mail from: @contact.email, subject: 'Un usuario quiere contactarse con usted'
  end
end
