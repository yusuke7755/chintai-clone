class CreateChintais < ActiveRecord::Migration[5.2]
  def change
    create_table :chintais do |t|
      t.text :rentname
      t.integer :wage
      t.text :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
