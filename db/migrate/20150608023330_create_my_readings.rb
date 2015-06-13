class CreateMyReadings < ActiveRecord::Migration
  def change
    create_table :my_readings do |t|
      t.string :book
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :release_date
      t.string :isbn

      t.timestamps null: false
    end
  end
end
