class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :isbn
      t.string :title
      t.text :description
      t.string :author
      t.string :publisher
      t.string :source
      t.string :owner
      t.boolean :electronic
      t.boolean :available
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
