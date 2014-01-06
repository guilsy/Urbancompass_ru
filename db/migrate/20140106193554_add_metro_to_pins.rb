class AddMetroToPins < ActiveRecord::Migration
  def change
    add_column :pins, :metro, :string
    add_index :pins, :metro
  end
end
