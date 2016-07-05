10.times{
  User.create! email: Faker::Internet.email, password: 'password', password_confirmation: 'password'
}