class CreateTents < ActiveRecord::Migration
  def change
    create_table :tents do |t|
      t.string :name
      t.string :location
      t.string :content
      t.integer :likes

      t.timestamps null: false
    end
  end
end
