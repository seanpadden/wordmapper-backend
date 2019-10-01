class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :word_name
      t.string :etymology
      t.float :lat
      t.float :lng
      t.integer :user_id
      t.timestamps
    end
  end
end
