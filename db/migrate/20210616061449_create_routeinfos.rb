class CreateRouteinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :routeinfos do |t|
      t.text :railroad
      t.text :station
      t.integer :foot
      t.references :chintai, foreign_key: true

      t.timestamps
    end
  end
end
