class Round < ApplicationRecord
    has_and_belongs_to_many :stations
    has_and_belongs_to_many :schedules
end
