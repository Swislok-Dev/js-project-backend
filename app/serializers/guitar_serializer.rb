class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :price, :image_url
end
