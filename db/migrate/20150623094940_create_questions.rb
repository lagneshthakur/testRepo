class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.integer :question_number
      t.string :description
      t.string :question_type
      t.timestamps
    end
  end
end
