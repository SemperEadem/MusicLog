class AddExerciseIdToPracticeSessions < ActiveRecord::Migration
  def change
    add_reference :practice_sessions, :exercise, index: true, foreign_key: true
  end
end
