class AddScaleIdToUserExercises < ActiveRecord::Migration
  def change
    add_reference :user_exercises, :scale, index: true, foreign_key: true
  end
end
