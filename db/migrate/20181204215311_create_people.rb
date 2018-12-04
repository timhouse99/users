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
      t.string :UserAccounts
      t.string :user_id
      t.string :gecos
      t.string :home_dir
      t.string :password
      t.string :access_granted_date
      t.string :access_suspended_date

      t.timestamps
    end
  end
end
