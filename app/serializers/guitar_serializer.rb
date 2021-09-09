class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :style, :brand, :model, :image_url
end
