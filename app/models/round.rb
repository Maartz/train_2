class Round < ApplicationRecord
    has_and_belongs_to_many :stations
end
