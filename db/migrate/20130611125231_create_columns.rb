class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.integer :organization_file_id

      t.timestamps
    end
  end
end
