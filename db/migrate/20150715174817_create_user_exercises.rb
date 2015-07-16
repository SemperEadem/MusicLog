class CreateUserExercises < ActiveRecord::Migration
  def change
    create_table :user_exercises do |t|
      t.references :practice_session, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
