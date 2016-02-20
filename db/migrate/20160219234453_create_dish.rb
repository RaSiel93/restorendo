class CreateDish < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.references :category

      t.timestamps null: false
    end
  end
end
