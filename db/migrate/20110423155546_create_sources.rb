class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.string :name
      t.string :logo_url
      t.string :rss_url

      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
