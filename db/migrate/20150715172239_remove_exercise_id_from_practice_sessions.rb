class RemoveExerciseIdFromPracticeSessions < ActiveRecord::Migration
  def change
  	remove_column :practice_sessions, :exercise_id
  end
end
