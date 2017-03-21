class AddExperienceToMontessoriTrainings < ActiveRecord::Migration[5.0]
  def change
    add_column :montessori_trainings, :experience, :boolean, :default => nil
  end
end
