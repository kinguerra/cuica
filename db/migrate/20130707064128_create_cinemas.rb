class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :place
      t.datetime :date

      t.timestamps
    end
  end
end
