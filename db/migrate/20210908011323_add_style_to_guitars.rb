class AddStyleToGuitars < ActiveRecord::Migration[6.1]
  def change
    add_column :guitars, :style, :string
  end
end
