class CreateUserAccountsGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts_groups do |t|
      t.integer :account_id
      t.integer :group_id

      t.timestamps
    end
  end
end
