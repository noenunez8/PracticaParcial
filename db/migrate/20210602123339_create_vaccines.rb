class CreateVaccines < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.integer :dose_number

      t.timestamps
    end
  end
end
