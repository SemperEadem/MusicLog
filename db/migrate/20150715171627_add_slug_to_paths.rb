class AddSlugToPaths < ActiveRecord::Migration
  def change
    add_column :paths, :slug, :string
    add_index :paths, :slug, unique: true
  end
end
