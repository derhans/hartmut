class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.integer :order_id
      t.integer :article_id
      t.decimal :quantity, :precision => 10, :scale => 2
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
