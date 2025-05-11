class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders

  scope :with_buyer_names, -> {
    left_joins(:users)
      .select(
        'products.id',
        'products.name',
        'users.name AS buyer_name'
      )
  }
end