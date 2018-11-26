class Listener < ApplicationRecord
    validates :title, presence: true
    validates :interval, presence: true
end
