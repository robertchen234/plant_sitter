class CreateOwnerPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :owner_plants do |t|
      t.integer :owner_id
      t.integer :plant_id
      t.belongs_to :owner, foreign_key: true
      t.belongs_to :plant, foreign_key: true

      t.timestamps
    end
  end
end
