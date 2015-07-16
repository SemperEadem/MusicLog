class UserExercise < ActiveRecord::Base
  belongs_to :practice_session
  belongs_to :user
  belongs_to :exercise
end
