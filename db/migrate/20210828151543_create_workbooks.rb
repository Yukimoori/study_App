class CreateWorkbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :workbooks do |t|
      t.integer  :test_id
      t.string   :test
      t.integer  :answer
      t.integer  :correct_answer
      t.string   :select_answer1
      t.string   :select_answer2
      t.string   :select_answer3
      t.string   :select_answer4
      t.timestamps
    end
  end
end
