class AddKeysToDownloads < ActiveRecord::Migration
  def self.up
    add_column :downloads, :user_id, :integer
    add_column :downloads, :media_id, :integer
  end

  def self.down
    remove_column :downloads, :media_id
    remove_column :downloads, :user_id
  end
end
