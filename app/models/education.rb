class Education < ApplicationRecord
  # validates :school, :location, :start_date, :end_date, :degree, :degree_date, presence: true
  belongs_to :application

  def pretty_date
      object.strftime("%m/%d/%Y")
  end
end
