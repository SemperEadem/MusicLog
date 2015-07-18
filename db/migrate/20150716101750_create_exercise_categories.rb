class CreateExerciseCategories < ActiveRecord::Migration
  def change
    create_table :exercise_categories do |t|
      t.string :name
      t.references :path, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
