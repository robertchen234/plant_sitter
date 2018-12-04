class CreateSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :zipcode
      t.string :phone
      t.string :email
      t.string :bio

      t.timestamps
    end
  end
end
