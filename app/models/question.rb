class Question < ActiveRecord::Base
  # attr_accessor :answers_attributes
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, :allow_destroy => true
  #validations
  validates :description, presence: true


end
