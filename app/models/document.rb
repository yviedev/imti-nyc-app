class Document < ApplicationRecord
  belongs_to :application
  has_attached_file :attachment
  validates_attachment :attachment, content_type: { content_type: ['application/pdf', 'application/msword', 'application/xml', /\Aapplication\/vnd.openxmlformats-.*/] }
  validates :attachment_file_name, presence: true
end
