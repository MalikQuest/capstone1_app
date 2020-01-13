class CreateActivityUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_users do |t|
      t.integer :activity_id
      t.integer :user_id

      t.timestamps
    end
  end
end
