class AddOfferToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :offer, :boolean, default: false
  end
end
