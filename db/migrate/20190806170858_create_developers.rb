class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :expirience
      t.string :skills
      t.string :jobs_id
      t.string :integer

      t.timestamps
    end
  end
end
