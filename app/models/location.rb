class Location < ApplicationRecord
    has_many :follows
    has_many :users, through: :follows
    has_many :markers
    accepts_nested_attributes_for :markers
    has_many :reports, through: :markers
end
