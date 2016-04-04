20.times do |n|
  email = "user#{n+1}@gmail.com"
  password  = "password"
  User.create_with(password: password, password_confirmation: password).find_or_create_by(email: email)
end
