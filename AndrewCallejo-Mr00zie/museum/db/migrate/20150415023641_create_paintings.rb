class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :artist
      t.string :museum
      t.string :title

      t.timestamps null: false
    end
  end
end
