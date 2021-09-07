class AddImageUrlToGuitars < ActiveRecord::Migration[6.1]
  def change
    add_column :guitars, :image_url, :string
  end
end
