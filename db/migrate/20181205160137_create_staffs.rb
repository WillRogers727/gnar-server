class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.text :firstName
      t.text :lastName
      t.integer :holidays

      t.timestamps
    end
  end
end
