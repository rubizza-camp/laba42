class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :project_id
      t.string :status
      t.text :description
      t.string :jobs_name

      t.timestamps
    end
  end
end
