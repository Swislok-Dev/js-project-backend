class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :style, :brand, :model, :image_url, :username, :created_at

  def username 
    self.object.user.username
  end

  def created_at
    self.object.created_at.strftime("%b-%d-%Y")
  end
end
