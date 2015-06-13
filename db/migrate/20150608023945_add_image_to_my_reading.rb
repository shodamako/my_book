class AddImageToMyReading < ActiveRecord::Migration
  def change
    add_column :my_readings, :image, :text
  end
end
