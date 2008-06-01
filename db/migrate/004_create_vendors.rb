class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.integer :address_id

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
