class UserGroupMembership < ApplicationRecord
  belongs_to :user_group
  belongs_to :user
  has_many :expenses, through: :user_group
end
