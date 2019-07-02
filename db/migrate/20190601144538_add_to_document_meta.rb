class AddToDocumentMeta < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :file_name, :string, null: false, default: ""
  end
end
