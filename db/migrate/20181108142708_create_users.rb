class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :avatar_url
      t.string :bio
      t.string :html_url
      t.string :email
      t.string :github_identifier

      t.timestamps
    end
  end
end
