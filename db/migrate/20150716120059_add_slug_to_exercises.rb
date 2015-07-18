class AddSlugToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :slug, :string, uniq: true
  end
end
