class UserAccount < ApplicationRecord
end

class UserAccount < ActiveRecord::Base
has_and_belongs_to_many :groups
has_and_belongs_to_many :peoples
end
