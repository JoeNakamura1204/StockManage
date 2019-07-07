class AddTransactionHash < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :transaction_hash, :string
  end
end
