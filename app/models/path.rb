class Path < ActiveRecord::Base

	# Use Friendly Id

	extend FriendlyId
	friendly_id :name, use: :slugged

	# Associations

	has_many :exercises, inverse_of: :path
  has_many :exercise_categories
end
