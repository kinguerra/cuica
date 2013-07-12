class AddAddressToCinemas < ActiveRecord::Migration
  def change
  	add_column :cinemas, :address, :string
  end
end
