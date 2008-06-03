class VendorNameField < ActiveRecord::Migration
  def self.up
    add_column :vendors, :name, :string
  end

  def self.down
  end
end
