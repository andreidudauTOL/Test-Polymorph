class CreateBags < ActiveRecord::Migration[5.1]
  def change
    create_table :bags do |t|
      t.integer :person_id
      t.integer :electronic_id
      t.timestamps
    end
  end
end
