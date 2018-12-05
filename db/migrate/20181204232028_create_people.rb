class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :suffix
      t.integer :department_id
      t.string :role
      t.string :phone_number
      t.string :eamil_address
      t.timestamps
    end
  end
end
