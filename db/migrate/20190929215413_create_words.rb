class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :word_name
      t.string :definition
      t.string :etymology 
      t.integer :lat
      t.integer :lng
      t.timestamps
    end
  end
end
