class AddColumnToApplies < ActiveRecord::Migration[5.2]
  def change
    add_column :applies, :apply_status, :boolean
  end
end
