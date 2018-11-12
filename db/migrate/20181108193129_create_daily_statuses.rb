class CreateDailyStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_status do |t|
      t.integer :user_id
      t.string :status
      t.timestamps
    end
  end
end
