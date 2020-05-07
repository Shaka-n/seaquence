class Report < ApplicationRecord
    belongs_to :user, optional: true
    has_many :markers
    accepts_nested_attributes_for :markers
    has_many :locations, through: :markers
end
