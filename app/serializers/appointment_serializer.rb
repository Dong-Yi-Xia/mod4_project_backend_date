class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :location
  # has_one :user
  # has_one :outfit
  # has_one :character
end
