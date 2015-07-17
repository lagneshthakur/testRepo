class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :description
      t.string :weightage
      t.timestamps
    end
  end
end
