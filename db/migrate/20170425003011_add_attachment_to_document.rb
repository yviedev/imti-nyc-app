class AddAttachmentToDocument < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :attachment
    add_column :documents, :attachment_file_name, :string
    add_column :documents, :attachment_file_size, :integer
    add_column :documents, :attachment_content_type, :string
    add_column :documents, :attachment_updated_at, :datetime

  end
end
