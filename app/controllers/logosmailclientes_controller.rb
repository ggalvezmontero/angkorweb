class LogosmailclientesController < ApplicationController
	def show
	  	file = Rails.root.to_s + '/app/assets/images/logosmailclientes/' + logo_name
		send_file file, type: 'image/png', dispoition: 'inline'
	end

	private

	def logo_name
		params.permit(:file_name)["file_name"]
	end
end
