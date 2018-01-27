class CreateAddressesUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses_units do |t|
      t.references :address, foreign_key: true
      t.references :unit, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
