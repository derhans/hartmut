class CreateHospitals < ActiveRecord::Migration
  def self.up
    create_table :hospitals do |t|
      t.integer :address_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :hospitals
  end
end
