class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :street
      t.string :nr
      t.string :zip
      t.string :country
      t.string :city
      t.string :email
      t.string :tel

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
