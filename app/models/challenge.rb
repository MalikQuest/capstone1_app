class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  belongs_to :event, optional: true
end
