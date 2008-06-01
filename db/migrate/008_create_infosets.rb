class CreateInfosets < ActiveRecord::Migration
  def self.up
    create_table :infosets do |t|
      t.integer :article_id
      t.integer :vendor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :infosets
  end
end
