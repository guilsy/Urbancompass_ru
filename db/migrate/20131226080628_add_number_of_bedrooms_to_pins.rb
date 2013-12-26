class AddNumberOfBedroomsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :bedroom_number, :integer
    add_index :pins, :bedroom_number
  end
end
