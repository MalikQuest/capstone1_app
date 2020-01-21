class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  belongs_to :event, optional: true
  has_many :challenge_users
  has_many :users, through: :challenge_users

  validates :description, presence: true
end
