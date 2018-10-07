
100.times do |x|
  Author.create(:name=> Faker::Job.title,  :bio=> Faker::WorldOfWarcraft.quote, :profile_pic=> Faker::Avatar.image, :academics => Faker::Hipster.words, :awards => Faker::Hipster.words)
end

#For Genre - Populate from the list ( Science fiction.Satire.Drama.Action and Adventure.Romance.Mystery.Horror.Self help. Fantasy) 
genre = ['Science', 'Fiction', 'Satire', 'Drama', 'Action', 'Adventure', 'Romance', 'Mystery', 'Horror', 'Fantasy', 'Self Help']
author_ids = Author.pluck(:id)

500.times do |x|
	Book.create(:name => Faker::Book.title, :short_description => Faker::Hipster.sentence, :long_description => Faker::Lorem.paragraph, :chapter_index => x + 5, :publication_date => Faker::Date.backward(14), :genre => genre.sample(3), :author_id => author_ids.sample )
end

book_ids = Book.pluck(:id)
250.times do |x|
	Review.create(:reviewer_name => Faker::Job.title, :rating => [1,2,3,4,5].sample, :title => Faker::Job.title, :description => Faker::Lorem.paragraph, :reviewable_id => book_ids.sample, :reviewable_type => 'Book')
end
