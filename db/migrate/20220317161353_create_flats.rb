class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :adress
      t.integer :rooms
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
