class User < ApplicationRecord
  has_one :shopping_cart
  has_many :guitars
end
