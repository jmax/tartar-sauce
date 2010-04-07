class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.belongs_to :board
      t.text       :description
      t.boolean    :needed_asap, :default => false
      t.boolean    :completed,   :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
