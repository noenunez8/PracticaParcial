class CreateNurses < ActiveRecord::Migration[6.1]
  def change
    create_table :nurses do |t|
      t.string :first_name
      t.string :last_name
      t.string :username

      t.timestamps
    end
  end
end
