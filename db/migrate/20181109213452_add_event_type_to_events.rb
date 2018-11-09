class AddEventTypeToEvents < ActiveRecord::Migration[5.2]
  def change
    change_table(:events) do |t|
      t.string :event_type
    end
  end
end
