class Group < ApplicationRecord
  has_and_belongs_to_many :UserAccount
  validates groups, presence: true
end
