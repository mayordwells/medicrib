class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :place_of_work
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
