class Category < ApplicationRecord
  has_many :photographer_categories
  has_many :user, through: :photographer_categories
end
