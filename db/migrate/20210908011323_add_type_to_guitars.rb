class AddTypeToGuitars < ActiveRecord::Migration[6.1]
  def change
    add_column :guitars, :type, :string
  end
end
