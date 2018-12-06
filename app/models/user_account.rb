class UserAccount < ApplicationRecord
  belongs_to  :groups
  belongs_to  :peoples
end
