class Document < ApplicationRecord

  belongs_to :user

  mount_uploader :file, DocumentUploader

  Document_metadata = Struct.new(:file_name, :auther, :created_date, :updated_date)

  def self.make_metadata(document)
    document_metadata = Document_metadata.new(
       file_name: document[:file],
       auther: document.user.name,
       created_at: document.created_at,
       updated_at: document.updated_at
    )
    return document_metadata
  end

end
