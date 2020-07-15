class CreateStoreCars < ActiveRecord::Migration[5.2]
  def change
    create_table :store_cars do |t|
      t.references :store, foreign_key: true
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
