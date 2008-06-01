class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :vendor_id
      t.integer :department_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
