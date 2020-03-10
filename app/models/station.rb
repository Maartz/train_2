class Station < ApplicationRecord
    validates :station_number, uniqueness: true
end
