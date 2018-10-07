class Book < ApplicationRecord
	serialize :genre, Array

	belongs_to :author
	has_many :reviews, as: :reviewable

	include PgSearch
  pg_search_scope :search, against: [:name , :short_description, :long_description, :genre]
end
