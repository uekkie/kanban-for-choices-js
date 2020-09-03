class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :task, null: false, foreign_key: true, index: false
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end

    add_index :assignments, %i[task_id member_id], unique: true
  end
end
