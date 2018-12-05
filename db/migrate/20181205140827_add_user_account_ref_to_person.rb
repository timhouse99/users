class AddUserAccountRefToPerson < ActiveRecord::Migration[5.1]
  def change
    add_reference :people, :user_account, foreign_key: true
  end
end
