class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :category_transactions, :transaction_id, :expense_id
  end
end
