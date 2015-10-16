User.delete_all
UserProfile.delete_all

user = User.create(email: 'test@example.com', login: 'test')
UserProfile.create(user: user, full_name: 'John Snow')
