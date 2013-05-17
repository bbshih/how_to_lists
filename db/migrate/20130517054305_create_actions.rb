class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :description
      t.references :guide

      t.timestamps
    end
    add_index :actions, :guide_id
  end
end
