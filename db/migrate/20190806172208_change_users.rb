class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string :google_token
      t.string :facebook_token
      t.string :telephone_number
      t.integer :role_id
      t.string :role_type
    end
  end
end
