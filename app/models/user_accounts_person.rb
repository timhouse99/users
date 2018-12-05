class UserAccountsPerson < ApplicationRecord
	self.table_name = 'USER_ACCOUNTS_PEOPLE'
	belongs_to :user_account
	validates :account_id, presence: true
	belongs_to :Person
	validates :user_id, presence: true
end
