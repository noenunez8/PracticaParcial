class CreateKids < ActiveRecord::Migration[6.1]
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.integer :dni_number

      t.timestamps
    end
  end
end
