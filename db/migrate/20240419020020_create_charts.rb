class CreateCharts < ActiveRecord::Migration[7.1]
  def change
    create_table :charts do |t|
      t.integer :patient_count
      t.date :registration_date

      t.timestamps
    end
  end
end
