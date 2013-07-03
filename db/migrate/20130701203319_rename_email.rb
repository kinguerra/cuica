class RenameEmail < ActiveRecord::Migration
  def up
    rename_column :admins, :email, :name
  end

  def down
    rename_column :admins, :name, :email
  end
end
