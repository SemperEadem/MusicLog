class AddScaleIdToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :scale, index: true, foreign_key: true
  end
end
