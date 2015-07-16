class Exercise < ActiveRecord::Base
  belongs_to :path
  belongs_to :description
  has_many :user_exercises

  validates :path, presence: true
end
