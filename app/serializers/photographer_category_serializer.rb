class PhotographerCategorySerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :category
  attributes :id, :user_id, :category_id
end
