class User < ApplicationRecord
    has_many :reports
    has_many :follows
    has_many :locations, through: :follows
end
