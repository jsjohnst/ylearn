class AddKeysToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :item_id, :integer
    add_index :medias, :item_id
  end

  def self.down
    remove_column :medias, :item_id
    remove_index :medias, :item_id
  end
end
