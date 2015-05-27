class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :movie
      t.integer :year
      t.integer :producer

      t.timestamps null: false
    end
  end
end
