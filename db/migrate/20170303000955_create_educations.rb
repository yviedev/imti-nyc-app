class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.integer :application_id
      t.string :school
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.string :degree
      t.datetime :degree_date
      t.timestamps
    end
  end
end
