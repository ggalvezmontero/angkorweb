class NotificationMailer < ApplicationMailer
  require 'open-uri'
  default to: 'consulting@angkorperu.com'

  def contact(params)
    @contact = params
    mail from: @contact.email, subject: 'Un usuario quiere contactarse con usted'
  end

  def join_us(params)
  	@contact = params
    cv = @contact.cv.url
    #cv = "https://1.bp.blogspot.com/-vQMXcLv1dyI/Vxa2GJEMT_I/AAAAAAAB9BI/fNEDR-a5sz859pqaFAzt1B2sYfAFYDXIgCKgB/s1600/Perritos-cachorros-122.jpg"
    cv_file = open(cv)
    cv_file_path = cv_file.path
  	attachments['cv.pdf'] = File.read(cv_file_path)
  	mail from: @contact.email, subject: 'Un postulante quiere unirse.'
  end
end
