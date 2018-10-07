class Review < ApplicationRecord
	belongs_to :reviewable, :polymorphic => true

	include PgSearch
  pg_search_scope :search, against: [:title, :description, :reviewer_name, :rating]
end
