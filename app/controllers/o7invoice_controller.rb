clientes = { "pecave" => "http://181.65.247.205/PECAVE"}


class o7invoiceController < ApplicationController
	def show
		redirect_to clientes[cliente]
	end

	private

	def cliente
		params.permit(:cliente)[":cliente"]
	end
end
