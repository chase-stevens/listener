class Listener < ApplicationRecord
  has_many :checkins, dependent: :destroy
  validates :title, presence: true
  validates :interval, presence: true
end
