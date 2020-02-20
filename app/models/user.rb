class User < ApplicationRecord
  has_one_attached :avatar

  has_many :reviews, through: :photo_sessions, dependent: :destroy
  has_many :photo_sessions

  has_many :photographer_categories
  has_many :categories, through: :photographer_categories

  has_many :photo_sessions_relationships, foreign_key: :photographer_id, class_name: 'PhotoSession'
  has_many :clients, through: :photo_sessions_relationships, source: :client

  has_many :photo_sessions_relationships, foreign_key: :client_id, class_name: 'PhotoSession'
  has_many :photographers, through: :photo_sessions_relationships, source: :photographer

  enum role: [:user, :photographer]
  after_initialize :set_default_role, :if => :new_record?

  has_secure_password

  validates :email, presence: true,  uniqueness: true
  validates_presence_of :first_name, :last_name
  

  def set_default_role
    self.role ||= :user
  end
end
