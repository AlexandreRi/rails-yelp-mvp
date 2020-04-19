class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :category
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
