class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
    	t.integer :user_id
    	t.boolean :completed
    	t.integer :survey_id
    	t.integer :answer_id
    	t.integer :question_id
      t.timestamps
    end
  end
end
