[:admin, :user].each do |role|
  Role.find_or_create_by(name: role)
end

20.times do |n|
  email = "user#{n+1}@gmail.com"
  password  = "password"
  User.create_with(password: password, password_confirmation: password).find_or_create_by(email: email).add_role(:user)
end

User.create_with(password: 'password').find_or_create_by(email: 'admin@gmail.com').add_role(:admin)
