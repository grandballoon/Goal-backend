class AddOrderToSubTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_tasks, :order, :integer
  end
end
