class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_type
      t.date :time_of_event
      t.string :login
      t.integer :user_id
      t.string :repo_name
      t.string :repo_url
      t.string :git_event_id

      t.timestamps
    end
  end
end
