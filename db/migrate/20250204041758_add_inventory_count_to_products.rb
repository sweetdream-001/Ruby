class AddInventoryCountToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :inventory_count, :integer
  end
end
