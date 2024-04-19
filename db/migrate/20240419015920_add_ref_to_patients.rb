class AddRefToPatients < ActiveRecord::Migration[7.1]
  def change
    add_reference :patients, :users, null: false, foreign_key: true
  end
end
