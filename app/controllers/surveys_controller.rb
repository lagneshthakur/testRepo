class SurveysController < ApplicationController
	def index
    @surveys = Survey.all
	end

	def show
    @survey = Survey.find(params[:id])
    @first_question = Question.where(:survey_id => @survey.id, :question_number => 1).first
  end

  def new
    @survey = Survey.new
    @survey.questions.build
    @survey.questions.each do |question|
      question.answers.build
    end
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.save
    redirect_to @survey
  end

  def edit
    @survey = Survey.find_by_id(params[:survey_id])
    # @questions = @survey.questions.includes(:answers).all
  end 

  def change_questions_order
    survey = Survey.find(params[:id])
    if params[:picked_question_number].to_i > params[:target_question_number].to_i
      (params[:target_question_number].to_i..params[:picked_question_number].to_i-1).each do |i|
        question = Question.where(:survey_id => survey.id, :question_number => i).first
        question.update_attribute("question_number", question.question_number.to_i + 1)
      end
    else
      (params[:picked_question_number].to_i+1..params[:target_question_number].to_i).each do |i|
        question = Question.where(:survey_id => survey.id, :question_number => i).first
        question.update_attribute("question_number", question.question_number.to_i - 1)
      end
    end
    picked_question = Question.find(params[:question_id])
    picked_question.update_attribute("question_number", params[:target_question_number].to_i)
    render :nothing => true
  end

  private

  def survey_params
    params.require(:survey).permit(:title, :description, questions_attributes: [:description,:question_number,answers_attributes: [:description]])
  end
end