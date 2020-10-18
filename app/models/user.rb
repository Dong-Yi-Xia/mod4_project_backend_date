class User < ApplicationRecord
    has_many :outfits
    has_many :appointments
    has_many :appointments, through: :outfits

    validates :username, presence: true, uniqueness: true
    has_secure_password

end
