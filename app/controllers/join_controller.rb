class JoinController < ApplicationController
	def index
	end

	def senior
		@type = 'senior'
	end

	def young
		@type = 'young'
	end

	def students
		@type = 'students'
	end
end
