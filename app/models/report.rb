class Report < ApplicationRecord
    belongs_to :user
    has_many :markers
    has_many :locations, through: :markers
end
