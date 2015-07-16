class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.references :path, index: true, foreign_key: true
      t.string :name, index: true, foreign_key: true
      t.text :description, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
