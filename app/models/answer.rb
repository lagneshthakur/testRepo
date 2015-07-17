class Answer < ActiveRecord::Base

  belongs_to :question
  #validations
  validates :description, presence: true
end
