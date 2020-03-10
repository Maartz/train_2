class Schedule < ApplicationRecord
    validates :schedule, uniqueness: true
end
