class CreateHeadlines < ActiveRecord::Migration
  def self.up
    create_table :headlines do |t|
      t.integer :source_id
      t.string :guid
      t.string :title
      t.string :link
      t.datetime :published_at

      t.datetime :created_at
    end
    add_index :headlines, :source_id
    add_index :headlines, :guid, :unique => true
  end

  def self.down
    drop_table :headlines
  end
end
