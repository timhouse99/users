class UserAccountsGroup < ApplicationRecord
	self.table_name = 'USER_ACCOUNTS_GROUPS'
	belongs_to :user_account
	validates :account_id, presence: true
	belongs_to :Group
	validates :group_id, presence: true
end
