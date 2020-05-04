class CreateMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :markers do |t|
      t.integer :waterline_distance
      t.integer :report_id
      t.integer :location_id
      t.timestamps
    end
  end
end
