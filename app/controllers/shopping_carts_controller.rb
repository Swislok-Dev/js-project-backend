class ShoppingCartsController < ApplicationController
  has_one :user
  has_many :guitars, through :users
end
