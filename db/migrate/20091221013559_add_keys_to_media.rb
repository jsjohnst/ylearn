class AddKeysToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :item_id, :integer
  end

  def self.down
    remove_column :medias, :item_id
  end
end
