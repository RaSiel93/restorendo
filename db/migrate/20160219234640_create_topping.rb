class CreateTopping < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.float :price
      t.references :dish

      t.timestamps null: false
    end
  end
end
