class EditDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :type
    add_column :documents, :category, :string
  end
end
