class AddKeysToCheckout < ActiveRecord::Migration
  def self.up
    add_column :checkouts, :user_id, :integer
    add_column :checkouts, :media_id, :integer
    add_index :checkouts, :user_id
    add_index :checkouts, :media_id
  end

  def self.down
    remove_column :checkouts, :media_id
    remove_column :checkouts, :user_id
    remove_index :checkouts, :user_id
    remove_index :checkouts, :media_id
  end
end
