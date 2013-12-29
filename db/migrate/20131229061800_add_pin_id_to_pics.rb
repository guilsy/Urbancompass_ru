class AddPinIdToPics < ActiveRecord::Migration
  def change
    add_column :pics, :pin_id, :integer
    add_index :pics, :pin_id
  end
end
