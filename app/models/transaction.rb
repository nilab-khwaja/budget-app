class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categorys, through: :category_transactions
  has_many :category_transaction
  validates :name, :amount, presence: true
end
