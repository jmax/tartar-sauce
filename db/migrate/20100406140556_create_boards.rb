class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.belongs_to :user
      t.string     :name
      t.string     :description
      t.boolean    :archived, :default => false
      t.string     :cached_slug

      t.timestamps
    end
  end

  def self.down
    drop_table :boards
  end
end
