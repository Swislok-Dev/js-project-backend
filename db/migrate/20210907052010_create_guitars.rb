class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
