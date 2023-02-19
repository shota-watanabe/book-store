class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.integer :state
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
