class PhotoSession < ApplicationRecord
  belongs_to :client, foreign_key: 'client_id', class_name: 'User'
  belongs_to :photographer, foreign_key: 'photographer_id', class_name: 'User'
  has_one :review
end
