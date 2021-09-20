class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :user_id
      t.integer :level, default: 0
      t.integer :score, default: 0
      t.integer :total_score, default: 0
      t.timestamps
    end
  end
end
