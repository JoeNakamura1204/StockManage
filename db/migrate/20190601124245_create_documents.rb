class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :file
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
