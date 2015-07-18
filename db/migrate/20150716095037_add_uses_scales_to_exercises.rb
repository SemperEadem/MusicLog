class AddUsesScalesToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :uses_scales, :boolean
  end
end
