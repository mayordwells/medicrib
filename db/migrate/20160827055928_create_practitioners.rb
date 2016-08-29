class CreatePractitioners < ActiveRecord::Migration[5.0]
  def change
    create_table :practitioners do |t|
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :position
      t.string :place_of_work
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
