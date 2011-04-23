class CreatePlays < ActiveRecord::Migration
  def self.up
    create_table :plays do |t|
      t.integer :user_id
      t.integer :headline_id
      t.integer :chosen_source_id
      t.boolean :won

      t.datetime :created_at
    end
  end

  def self.down
    drop_table :plays
  end
end
