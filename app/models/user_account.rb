class UserAccount < ApplicationRecord
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :peoples
  validates user_id, presence: true
end
