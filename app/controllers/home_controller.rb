class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :send_contact_form

	def index
	end

	def about
	end

	def partners
	end

	def contact
	end

	def solutions
	end

	def send_contact_form
		ActionCorreo.contact(params)
		redirect_to action: "contact"
	end
end
