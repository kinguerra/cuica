class ChagenPoemsType < ActiveRecord::Migration
  def up
  	change_column :poems, :content, :text, :limit => nil
  end

  def down
  	change_column :poems, :content, :string
  end
end
