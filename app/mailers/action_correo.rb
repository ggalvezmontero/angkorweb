class ActionCorreo < ApplicationMailer
	default to: 'aespichan@angkorperu.com'

	def contact(user)
		mail(from: user[:email], subject: 'Un usuario quiere contactarse con usted')
	end
end