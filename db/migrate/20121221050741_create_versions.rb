class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.references :software
      t.string :name

      t.timestamps
    end
    add_index :versions, :software_id
  end
end
