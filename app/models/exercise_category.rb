class ExerciseCategory < ActiveRecord::Base
  belongs_to :path
  has_many :exercise_assignments
  has_many :exercises, through: :exercise_assignments
end
