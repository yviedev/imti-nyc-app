class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.integer :application_id
      t.string :employer
      t.string :occupation
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
