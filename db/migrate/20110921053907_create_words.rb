class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :fr
      t.string :de
      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
