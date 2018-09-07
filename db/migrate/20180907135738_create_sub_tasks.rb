class CreateSubTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_tasks do |t|
      t.references :task, foreign_key: true
      t.text :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
