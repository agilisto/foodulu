class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :title
      t.string :description
      t.float :latitude
      t.float :longitude
      t.references :chain

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
