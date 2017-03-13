class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :application_id
      t.string :attachment
      t.string :type
      t.timestamps
    end
  end
end
