class CreateLocalSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :local_schools do |t|
      t.integer :code
      t.string :name
      t.timestamps
    end
  end
end
