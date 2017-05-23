class CreateHunts < ActiveRecord::Migration[5.0]
  def change
    create_table :hunts do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :duration
      t.integer :difficulty
      t.string :city

      t.timestamps
    end
  end
end
