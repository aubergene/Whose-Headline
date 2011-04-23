class CreatePlayedSources < ActiveRecord::Migration
  def self.up
    create_table :played_sources do |t|
      t.integer :source_id
      t.integer :play_id

      t.datetime :created_at
    end
    add_index :played_sources, [:source_id, :play_id]
  end

  def self.down
    drop_table :played_sources
  end
end
