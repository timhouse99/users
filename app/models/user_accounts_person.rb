class UserAccountsPerson < ApplicationRecord
	#belongs_to :UserAccount
	validates :account_id, presence: true
	#belongs_to :Person
	validates :user_id, presence: true
end

