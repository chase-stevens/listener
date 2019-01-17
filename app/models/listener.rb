class Listener < ApplicationRecord
  belongs_to :user
  has_many :checkins, dependent: :destroy
  validates :title, presence: true
  validates :interval, presence: true
end
