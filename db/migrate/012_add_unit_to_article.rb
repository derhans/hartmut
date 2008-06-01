class AddUnitToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :unit_id, :integer
  end

  def self.down
  end
end
