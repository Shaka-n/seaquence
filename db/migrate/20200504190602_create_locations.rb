class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :zipcode
      t.text :bio
      t.timestamps
    end
  end
end
