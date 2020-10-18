class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :name, :age, :gender, :bio, :looks, :smarts, :athletic, :finance, :kindness
  has_many :outfits
  has_many :appointments

  
end

