class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.integer :project_id, null: false, default: 0
      t.string :name, null: false
      t.integer :amount, null: false
      t.boolean :status_flg, null: false, default: 0
      t.timestamps
    end
  end
end
