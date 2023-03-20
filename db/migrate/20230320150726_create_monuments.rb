class CreateMonuments < ActiveRecord::Migration[7.0]
  def change
    create_table :monuments do |t|
      t.string :name
      t.string :address
      t.integer :price_per_night
      t.integer :capacity
      t.text :description
      t.float :rating
      t.string :utilities
      t.string :theme
      t.string :city
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
