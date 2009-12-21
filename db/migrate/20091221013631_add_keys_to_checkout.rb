class AddKeysToCheckout < ActiveRecord::Migration
  def self.up
    add_column :checkouts, :user_id, :integer
    add_column :checkouts, :media_id, :integer
  end

  def self.down
    remove_column :checkouts, :media_id
    remove_column :checkouts, :user_id
  end
end
