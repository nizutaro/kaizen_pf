class CreateFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :flows do |t|
      t.integer :project_id, null: false
      t.string :name, null: false
      t.integer :process_time, null: false
      t.integer :improvement_flg, null: false
      t.timestamps
    end
  end
end
