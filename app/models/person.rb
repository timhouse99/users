class Person < ApplicationRecord
  attr_accessible :first_name, :last_name, :middle_initial, :suffix, :department_id, :role, :phone_number, :emails_address

  validates :first_name, :last_name
            :presence => true
end
