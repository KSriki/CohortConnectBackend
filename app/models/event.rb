class Event < ApplicationRecord
  validates :git_event_id, uniqueness: true
  belongs_to :user

end
