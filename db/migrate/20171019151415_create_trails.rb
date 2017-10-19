class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.string :mountain_name
      t.string :difficulty
      t.string :rating

      t.timestamps
    end
  end
end
