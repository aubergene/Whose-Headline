class CreatePlayedSources < ActiveRecord::Migration
  def self.up
    create_table :played_sources do |t|
      t.integer :source_id
      t.integer :play_id

      t.datetime :created_at
    end
  end

  def self.down
    drop_table :played_sources
  end
end
