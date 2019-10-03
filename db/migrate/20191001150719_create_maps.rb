class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :word_name
      t.string :etymology
      t.integer :user_id
    end
  end
end
