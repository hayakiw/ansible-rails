class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.boolean :disabled, default: false, null: false
      t.timestamps
    end
  end
end
