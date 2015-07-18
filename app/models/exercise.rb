class Exercise < ActiveRecord::Base

  # Use Friendly Id

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :path

  has_many :user_exercises
  has_many :exercise_assignements
  has_many :exercise_categories, through: :exercise_assignements

  validates :path, presence: true
end
