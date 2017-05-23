class CreateCheckpoints < ActiveRecord::Migration[5.0]
  def change
    create_table :checkpoints do |t|
      t.string :address
      t.references :hunt, foreign_key: true
      t.text :content
      t.text :clue

      t.timestamps
    end
  end
end
