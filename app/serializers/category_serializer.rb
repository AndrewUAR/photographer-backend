class CategorySerializer < ActiveModel::Serializer
  has_many :photographer_categories
  
  attributes :id, :name, :description, :imageURL
end
