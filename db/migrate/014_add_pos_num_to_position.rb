class AddPosNumToPosition < ActiveRecord::Migration
  def self.up
    add_column :positions, :pos, :string
  end

  def self.down
    remove_column :positions, :pos
  end
end
