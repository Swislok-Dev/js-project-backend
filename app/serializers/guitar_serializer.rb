class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :style, :brand, :model, :image_url, :username

  def username 
    self.object.user.username
  end
end
