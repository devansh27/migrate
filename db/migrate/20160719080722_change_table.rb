class ChangeTable < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upc_ode, :upc_code
    end
  end
end
