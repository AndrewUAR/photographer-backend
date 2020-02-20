class UserSerializer < ActiveModel::Serializer
  has_many :photographer_categories
  has_many :categories, through: :photographer_categories
  attributes :id, :first_name, :last_name, :email, :role, :gender, :price, :location, :skill, :language

end
