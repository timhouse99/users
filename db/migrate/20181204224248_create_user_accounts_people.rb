class CreateUserAccountsPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts_people do |t|
      t.integer :account_id
      t.integer :person_id

      t.timestamps
    end
  end
end
