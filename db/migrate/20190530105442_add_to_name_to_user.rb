class AddToNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: "〇〇株式会社"
  end
end
