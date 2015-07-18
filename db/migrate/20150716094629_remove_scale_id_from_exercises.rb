class RemoveScaleIdFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :scale_id
  end
end
