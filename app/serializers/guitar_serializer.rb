class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :style, :brand, :model, :price, :image_url
end
