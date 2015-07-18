class AddDetailsToUserExercises < ActiveRecord::Migration
  def change
    add_column :user_exercises, :start_speed, :integer
    add_column :user_exercises, :end_speed, :integer
    add_column :user_exercises, :duration, :integer
    add_column :user_exercises, :tension_level, :integer
    add_column :user_exercises, :notes, :text
  end
end
