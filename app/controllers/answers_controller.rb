class AnswersController < ApplicationController
	def update
		@answer = Answer.find(params[:id])
	    @answer.description = params[:answer][:description]
	    @answer.save
	    render :nothing => true
	end
end
