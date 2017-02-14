users = []
questions = []
answers = []

10.times do 
	users << User.create!(
			username: Faker::Internet.user_name,
			email: Faker::Internet.email,
			encrypted_password: "password"
		)
end 

users.each do |user|
	questions << Question.create!(
			user_id: user.id, 
			body: Faker::Lorem.sentence
		)
end 

questions.each do |question|
	rand(1..3).times do 
		answers << Answer.create!(
			user_id: users.sample.id,
			question_id: question.id,
			body: Faker::Lorem.sentence
			)
	end 
end 

