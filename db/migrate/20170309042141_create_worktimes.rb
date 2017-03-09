class CreateWorktimes < ActiveRecord::Migration[5.0]
  def change
    create_table :worktimes do |t|
      t.integer :user, null: false
      t.integer :project, null: false
      t.datetime :start_at
      t.datetime :end_at
      t.integer :breaktimes

      t.timestamps
    end
  end
end
