class CreatePlays < ActiveRecord::Migration
  def self.up
    create_table :plays do |t|
      t.integer :user_id
      t.integer :headline_id
      t.integer :chosen_source_id
      t.boolean :won

      t.datetime :created_at
    end
    add_index :plays, :user_id
    add_index :plays, :headline_id
    add_index :plays, :chosen_source_id
    add_index :plays, :won
  end

  def self.down
    drop_table :plays
  end
end
