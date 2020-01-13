class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :activity_users
  has_many :activities, through: :activity_users
  has_many :challenge_users
  has_many :challenges, through: :challenge_users
  has_many :event_users
  has_many :events, through: :event_users
end
