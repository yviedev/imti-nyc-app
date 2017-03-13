class AddMiddleInitialAndDonorToUserTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :middle_initial, :string
    add_column :users, :donor, :boolean
  end
end
