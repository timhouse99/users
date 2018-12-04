class CreateUserAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts do |t|
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
