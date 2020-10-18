class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :occupation, :lovePoint, :favorite, :bio, :imageURL
  has_many :appointments
  
end
