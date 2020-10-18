class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :character, :user 
  # has_one :outfit
  # has_one :character
end
