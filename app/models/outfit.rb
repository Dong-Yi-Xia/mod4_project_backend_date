class Outfit < ApplicationRecord
  belongs_to :user
  has_many :appointments
  
  # default_scope { order(created_at: :desc) }

end
