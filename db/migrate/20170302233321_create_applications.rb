class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :phone_number
      t.boolean :payment_status
      t.boolean :background_check
      t.string :application_status
      t.string :resume
      t.string :health_form
      t.text :personal_essay
      t.string :toefl_score
      t.string :name_of_spouse
      t.string :birth_place
      t.datetime :birth_date
      t.string :country_of_citizenship
      t.string :occupation
      t.string :ages_of_children
      t.timestamps
    end
  end
end
