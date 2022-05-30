class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.float :price
      t.string :address
      t.string :name
      t.text :description
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
