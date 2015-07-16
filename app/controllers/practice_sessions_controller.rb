class PracticeSessionsController < ApplicationController

	def new
		@practice_session = PracticeSession.new
	end
	
end
