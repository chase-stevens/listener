class Listener < ApplicationRecord
    has_many :checkins
    validates :title, presence: true
    validates :interval, presence: true
end
