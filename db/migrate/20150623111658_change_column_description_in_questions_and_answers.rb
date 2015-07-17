class ChangeColumnDescriptionInQuestionsAndAnswers < ActiveRecord::Migration
  def change
    change_column :questions, :description, :text
    change_column :answers, :description, :text
  end
end
