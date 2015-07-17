class QuestionsController < ApplicationController
	def show
		@user_survey_id = params[:user_survey_id]
		@survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    # question_number = params[:question_number].blank? ? 1 : params[:question_number].to_i
    # @question = Question.where(:question_number => question_number, :survey_id => @survey.id).first
		# @question = @survey.questions.order("question_number").includes(:answers).find(params[:id])
	end

	def thankyou
		@survey = Survey.find(params[:survey_id])
		@user_answers = UserAnswer.where(:survey_id => params[:survey_id])
	end

	def edit
		@survey = Survey.find(params[:survey_id])
		@question = @survey.questions.includes(:answers).find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
    @question.description = params[:question][:description]
    @question.save
    render :nothing => true
	end
end
