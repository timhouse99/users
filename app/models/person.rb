class Person < ApplicationRecord
has_and_belongs_to_many :user_accounts
end
