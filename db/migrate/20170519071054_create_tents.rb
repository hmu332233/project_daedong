class CreateTents < ActiveRecord::Migration
  def change
    create_table :tents do |t|
      t.string :name
      t.string :location
      t.string :content
      t.string :menu_content
      t.string :pic_url
      t.integer :likes ,:default => 0

      t.timestamps null: false
    end
  end
end
