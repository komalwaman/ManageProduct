class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table :products do |t|
      t.rename :type, :product_type
      t.rename :status, :product_status
    end
  end
end
