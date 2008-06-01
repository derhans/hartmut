class CreateJoinArticleDepartment < ActiveRecord::Migration
  def self.up
    create_table :articles_departments, :id => false do |t|
      t.integer :article_id
      t.integer :department_id
    end
  end

  def self.down
    drop_table :articles_departments
  end
end
