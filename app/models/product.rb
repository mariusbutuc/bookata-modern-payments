class Product < ActiveRecord::Base
  belongs_to :user

  has_attached_file :file

  validates_attachment_content_type :file, content_type: [
    'image/jpg',
    'image/jpeg',
    'image/png',
    'image/gif',
    'application/pdf',
    'application/zip',
  ]
end
