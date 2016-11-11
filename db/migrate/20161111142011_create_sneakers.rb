class CreateSneakers < ActiveRecord::Migration[5.0]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :img_url
      t.string :shoesize
      t.string :price
      t.references :brand, index: true, foreign_key: true
      t.timestamps
    end
  end
end
