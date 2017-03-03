class CreateMontessoriTrainings < ActiveRecord::Migration[5.0]
  def change
    create_table :montessori_trainings do |t|
      t.integer :application_id
      t.string :name
      t.string :location
      t.string :diploma
      t.string :degree
      t.datetime :degree_date
      t.timestamps
    end
  end
end
