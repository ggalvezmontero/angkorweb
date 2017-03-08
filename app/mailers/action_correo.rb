class ActionCorreo < ApplicationMailer
	default to: 'renzo.zuniga@pucp.edu.pe'

	def contact(user)
	  @user = user
	  mail from: @user[:email], subject: 'Un usuario quiere contactarse con usted'
	end
end
