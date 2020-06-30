class Station < ApplicationRecord

    has_one_attached :picture

    validates :station_number, uniqueness: true

    has_rich_text :description
end
