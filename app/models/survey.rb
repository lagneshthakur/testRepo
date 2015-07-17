class Survey < ActiveRecord::Base
	# attr_accessor :questions_attributes
	has_many :questions, :dependent => :destroy
	accepts_nested_attributes_for :questions, :allow_destroy => true

	has_many :user_answers, :dependent => :destroy
end
