class ChangeDate < ActiveRecord::Migration
  def up
  	change_column :cinemas, :date, :string
  end

  def down
  	change_column :cinemas, :date, :datetime
  end
end
