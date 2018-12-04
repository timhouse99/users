class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class UserAccount < ActiveRecord::Base
has_and_belongs_to_many :groups
has_and_belongs_to_many :peoples
end

class Group < ActiveRecord::Base
has_and_belongs_to_many :UserAccount
end

class Person < ActiveRecord::Base
has_and_belongs_to_many :UserAccounts
end

class User_Account_Person < ActiveRecord::Base
	self.table_name = 'USER_ACCOUNTS_PEOPLE'
	belongs_to :UserAccount
	validates :account_id, presence: true
	belongs_to :Person
	validates :user_id, presence: true
end

class User_Account_Group < ActiveRecord::Base
	self.table_name = 'USER_ACCOUNTS_GROUPS'
	belongs_to :UserAccount
	validates :account_id, presence: true
	belongs_to :Group
	validates :group_id, presence: true
end

