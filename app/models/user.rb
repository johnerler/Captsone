class User < ApplicationRecord
  has_many :expenses
  belongs_to :user_group

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
