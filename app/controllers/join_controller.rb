class JoinController < ApplicationController
	def index
	end

	def senior
		@type = 'senior'
		@member = PossibleMember.new
	end

	def young
		@type = 'young'
		@member = PossibleMember.new
	end

	def students
		@type = 'students'
		@member = PossibleMember.new
	end
end
