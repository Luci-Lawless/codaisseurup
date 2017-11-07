class AddPriceDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :price, :decimal, :default => 0
  end
end
