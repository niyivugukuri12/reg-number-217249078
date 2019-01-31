class CreateStudentforms < ActiveRecord::Migration[5.1]
  def change
    create_table :studentforms do |t|
      t.integer :regno
      t.string :name
      t.string :telephone
      t.text :address

      t.timestamps
    end
  end
end
