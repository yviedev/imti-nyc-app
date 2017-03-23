class RemoveIdFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :role_id, :integer
    add_column :users, :role, :integer
  end
end
