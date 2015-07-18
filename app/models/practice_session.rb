class PracticeSession < ActiveRecord::Base
  belongs_to :path
  belongs_to :user

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  validates :path, presence: true
end
