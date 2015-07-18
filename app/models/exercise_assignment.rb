class ExerciseAssignment < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :exercise_category
end
