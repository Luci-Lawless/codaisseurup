class AddColumnDefaults < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :includes_food, :boolean, :default => false
    change_column :events, :includes_drinks, :boolean, :default => false
    change_column :events, :active, :boolean, :default => true
  end
end
