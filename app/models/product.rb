class Product < ActiveRecord::Base
  belongs_to :user

  has_many :sales

  validates_numericality_of :price,
    greater_than: 49,
    message: 'must be at lease 50 cents'

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
