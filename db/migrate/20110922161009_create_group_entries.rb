class CreateGroupEntries < ActiveRecord::Migration
  def self.up
    create_table :group_entries do |t|
      t.integer :word_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :group_entries
  end
end
