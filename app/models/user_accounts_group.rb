class UserAccountsGroup < ApplicationRecord
	#belongs_to :UserAccount
	validates :account_id, presence: true
	#belongs_to :Group
	validates :group_id, presence: true
end
