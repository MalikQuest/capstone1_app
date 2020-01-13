class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.text :description
      t.integer :user_id
      t.integer :activity_id
      t.integer :level
      t.datetime :deadline
      t.integer :event_id
      t.integer :amount

      t.timestamps
    end
  end
end
