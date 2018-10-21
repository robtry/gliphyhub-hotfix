#rake db:migrate VERSION=0

user = User.new(
		:email                 => "admin@gliphyhub.com",
		:password              => "123456",
		:password_confirmation => "123456"
)
user.save!
