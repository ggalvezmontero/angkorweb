class NotificationMailer < ApplicationMailer
  require 'open-uri'
  default to: 'bryam.pacco@gmail.com'

  def contact(params)
    @contact = params
    mail from: @contact.email, subject: 'Un usuario quiere contactarse con usted'
  end

  def join_us(params)
  	@contact = params
    p "hola"
    cv = @contact.cv.url
    cv = "https://s3.amazonaws.com/dreamstoreme-staging/dreams/main_images/000/000/012/original/banner-01.jpg?1451774055"
    cv_file = open(cv)
    cv_file_path = cv_file.path
    p cv_file_path
  	attachments['cv.pdf'] = File.read(cv_file_path)
  	mail from: @contact.email, subject: 'Un usuario quiere unirse'
  end
end
