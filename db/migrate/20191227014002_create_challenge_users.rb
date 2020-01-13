class CreateChallengeUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_users do |t|
      t.integer :challenge_id
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
