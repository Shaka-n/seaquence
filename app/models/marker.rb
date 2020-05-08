class Marker < ApplicationRecord
    belongs_to :location
    belongs_to :report, optional: true
end
