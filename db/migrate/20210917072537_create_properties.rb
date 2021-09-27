class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :account
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.integer :bedrooms
      t.integer :area
      t.integer :garages
      t.string :photo

      t.timestamps
    end
  end
end
