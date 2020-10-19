class Character < ApplicationRecord
    has_many :appointments
    default_scope { order('created_at ASC') }
end
