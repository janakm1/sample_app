class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :email, :unique => treu
  end

  def self.down
    remove_index :users, :email
  end
end
