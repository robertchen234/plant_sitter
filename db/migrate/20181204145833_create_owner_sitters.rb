class CreateOwnerSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :owner_sitters do |t|
      t.integer :owner_id
      t.integer :sitter_id
      t.belongs_to :owner, foreign_key: true
      t.belongs_to :sitter, foreign_key: true

      t.timestamps
    end
  end
end
