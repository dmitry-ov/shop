class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :foto
      t.string :name
      t.decimal :price
      t.string :vendor
      t.text :describe
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
