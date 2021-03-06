class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
