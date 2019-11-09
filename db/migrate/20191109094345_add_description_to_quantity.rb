class AddDescriptionToQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :quantities, :description, :string
  end
end
