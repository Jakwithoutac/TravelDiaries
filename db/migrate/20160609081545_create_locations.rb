class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
        t.text :country
        t.text :area
        t.text :picture

      t.timestamps null: false
    end
  end
end
