class CreateVaccinations < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccinations do |t|
      t.string :name
      t.integer :dose_number
      t.date :date
      t.references :kid, null: false, foreign_key: true
      t.references :nurse, null: false, foreign_key: true
      t.references :vaccine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
