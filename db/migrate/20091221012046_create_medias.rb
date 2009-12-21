class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :title
      t.text :description
      t.string :length
      t.string :type
      t.string :filename
      t.boolean :checked_out
      t.boolean :available
      t.string :format

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
