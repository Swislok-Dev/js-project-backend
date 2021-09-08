class Guitar < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :shopping_carts
end
