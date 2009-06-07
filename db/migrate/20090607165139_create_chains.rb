class CreateChains < ActiveRecord::Migration
  def self.up
    create_table :chains do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :chains
  end
end
