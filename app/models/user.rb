class User < ApplicationRecord
  validates :login, uniqueness: true
has_many :daily_statuses
has_many :events






end
