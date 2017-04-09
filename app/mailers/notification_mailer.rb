class NotificationMailer < ApplicationMailer
  require 'open-uri'
  default to: 'aespichan@angkorperu.com'

  def contact(params)
    @contact = params
    mail from: @contact.email, subject: 'Un usuario quiere contactarse con usted'
  end

  def join_us(params)
  	@contact = params
    cv = @contact.cv.url
    cv = "https://cuteoverload.files.wordpress.com/2010/03/screen-shot-2010-03-16-at-1-53-00-pm.jpg"
    cv_file = open(cv)
    cv_file_path = cv_file.path
  	attachments['cv.pdf'] = File.read(cv_file_path)
  	mail from: @contact.email, subject: 'Un usuario quiere unirse'
  end
end
