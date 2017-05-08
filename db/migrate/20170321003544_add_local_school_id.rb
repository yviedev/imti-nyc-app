class AddLocalSchoolId < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :local_school_id, :integer
  end
end
