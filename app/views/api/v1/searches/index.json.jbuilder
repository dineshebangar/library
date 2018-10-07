json.data do 

	json.authors @authors do |record|
		json.id record.id
		json.bio record.bio
		json.profile_pic_url record.profile_pic #record.profile_pic_url
		json.academics record.academics.join(',')
		json.awards record.awards.join(',')
	end

	json.books @books do |record|
		json.id record.id
		json.book_name record.name
		json.author_name record.author.name
		json.genre record.genre.join(',')
		json.description record.long_description
	end

	json.reviews @reviews do |record|
		json.id record.id
		json.reviewer_name record.reviewer_name
		json.rating record.rating
		json.description record.description
		json.title record.title
	end

end

