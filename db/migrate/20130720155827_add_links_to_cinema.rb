class AddLinksToCinema < ActiveRecord::Migration
  def change
  	add_column :cinemas, :link, :string
  end
end
