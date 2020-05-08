class User < ApplicationRecord
    has_many :reports
    has_many :follows
    has_many :locations, through: :follows

    has_secure_password
    
    def self.search(search)
        if search
            username = User.where(username: search)
        else
        end 
    end
end
