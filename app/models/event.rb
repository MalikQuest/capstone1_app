class Event < ApplicationRecord
  belongs_to :activity
  has_many :event_users
  has_many :users, through: :event_users
end
