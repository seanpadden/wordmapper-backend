class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.decimal :lat, :precision => 10, :scale => 6
      t.decimal :lng, :precision => 10, :scale => 6
      t.integer :language_id
      t.timestamps
    end
  end
end
