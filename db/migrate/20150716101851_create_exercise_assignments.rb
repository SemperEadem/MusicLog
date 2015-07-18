class CreateExerciseAssignments < ActiveRecord::Migration
  def change
    create_table :exercise_assignments do |t|
      t.references :exercise, index: true, foreign_key: true
      t.references :exercise_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
