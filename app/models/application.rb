class Application < ApplicationRecord
  has_many :transcripts, -> { where 'type = transcript' }, class_name: 'Document'
  has_many :recommendations, -> { where 'type = recommendation' }, class_name: 'Document'
  has_many :references, -> { where 'type = reference' }, class_name: 'Document'
  has_many :educations
  has_many :montessori_trainings
  belongs_to :user
end
