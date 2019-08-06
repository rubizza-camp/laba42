class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :description
      t.float :cost
      t.string :require_skills
      t.date :dead_line
      t.integer :max_people_for_project
      t.integer :jobs_id

      t.timestamps
    end
  end
end
