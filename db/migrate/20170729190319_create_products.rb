class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :color
      t.integer :status, null: false
      t.date :inward_date, null: false
      t.string :type, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
