class CreateCategoryTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :category_transactions do |t|
      t.references :transaction, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
