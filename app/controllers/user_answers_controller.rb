class UserAnswersController < ApplicationController
	def create
		if params[:question_number].to_i == params[:count].to_i
			completed = 1
		else
			completed = 0
		end
		# if params[:user_survey_id].blank?
			@user_survey = UserAnswer.new(:survey_id => params[:survey_id],:user_id => params[:user_id], :answer_id => params[:answer_id],:question_id => params[:question_id], :completed => completed)
		# else
		# 	@user_survey = UserSurvey.find_by_id(params[:user_survey_id])
		# 	@user_survey.answers += ",{"+params[:question_id]+" : "+params[:answer_id]+"}"
			@user_survey.completed = completed
		# end

	  if(@user_survey.save)

			if (params[:question_number].to_i < params[:count].to_i)
			  question = Question.where(:survey_id => params[:survey_id].to_i, :question_number => params[:question_number].to_i + 1).first
			  redirect_to survey_question_path(:survey_id => params[:survey_id], :id => question.id)
			else
				redirect_to thankyou_path(:survey_id => params[:survey_id], :id => params[:question_id].to_i + 1)
			end
		else
			#thinking..
		end
	end
end