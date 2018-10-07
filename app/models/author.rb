class Author < ApplicationRecord
	#mount_uploader :profile_pic, ProfilePicUploader
	serialize :academics, Array
	serialize :awards, Array
	has_many :books
	
	include PgSearch
  pg_search_scope :search, against: [:name ,:bio, :academics, :awards]
end
