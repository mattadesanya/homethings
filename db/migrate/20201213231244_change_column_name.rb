class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :item_name, :name
    rename_column :rooms, :room_name, :name
  end
end
