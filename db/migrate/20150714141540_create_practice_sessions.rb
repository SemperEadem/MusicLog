class CreatePracticeSessions < ActiveRecord::Migration
  def change
    create_table :practice_sessions do |t|
      t.references :path, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :duration

      t.timestamps null: false
    end
  end
end
