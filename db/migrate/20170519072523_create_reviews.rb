class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :writer
      t.string :password
      t.string :content
      t.integer :tent_id

      t.timestamps null: false
    end
  end
end
