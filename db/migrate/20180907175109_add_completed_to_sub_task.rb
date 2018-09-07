class AddCompletedToSubTask < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_tasks, :completed, :boolean, default: false
  end
end
