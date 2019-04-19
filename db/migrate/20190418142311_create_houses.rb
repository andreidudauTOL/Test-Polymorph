class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.integer :person_id
      t.references :animal, polymorphic: true, index: true
      t.timestamps
    end
  end
end
