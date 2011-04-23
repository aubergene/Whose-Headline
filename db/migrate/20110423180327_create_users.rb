class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :nickname
      t.string :url
      t.boolean :admin, :default => false

      t.timestamps
    end
    add_index :users, [:provider, :uid], :unique => true
  end

  def self.down
    drop_table :users
  end
end
