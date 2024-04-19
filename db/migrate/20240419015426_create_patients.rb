class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone_number
      t.date :birth_date
      t.string :gender
      t.text :address

      t.timestamps
    end
  end
end
