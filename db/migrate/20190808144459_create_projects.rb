class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :info
      t.jsonb :skills

      t.timestamps
    end
  end
end
