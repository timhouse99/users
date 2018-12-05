class Group < ApplicationRecord
  has_and_belongs_to_many :UserAccount
  validates group_id, presence: true
end
