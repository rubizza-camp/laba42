class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :url
      t.string :project_id

      t.timestamps
    end
  end
end
