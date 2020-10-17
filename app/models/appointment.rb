class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :outfit
  belongs_to :character
end
