class CreateCheckouts < ActiveRecord::Migration
  def self.up
    create_table :checkouts do |t|
      t.string :ip
      t.datetime :date_out
      t.datetime :date_in
      t.boolean :returned

      t.timestamps
    end
  end

  def self.down
    drop_table :checkouts
  end
end
