class Group < ApplicationRecord
end

class Group < ActiveRecord::Base
has_and_belongs_to_many :user_account
end
