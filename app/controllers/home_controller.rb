class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
	end

	def about
	end

	def partners
	end

	def contact
		@contact = Contact.new
	end

	def solutions
	end

	def esupport
		redirect_to "http://esupport.angkorperu.com/"
	end
end
