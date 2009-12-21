class AddKeysToDownloads < ActiveRecord::Migration
  def self.up
    add_column :downloads, :user_id, :integer
    add_column :downloads, :media_id, :integer
    add_index :downloads, :user_id
    add_index :downloads, :media_id
  end

  def self.down
    remove_column :downloads, :media_id
    remove_column :downloads, :user_id
    remove_index :downloads, :user_id
    remove_index :downloads, :media_id
  end
end
