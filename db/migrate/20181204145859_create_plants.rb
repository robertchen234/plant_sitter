class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :species
      t.string :image
      t.string :info

      t.timestamps
    end
  end
end
