@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "John", last_name: "Son")      

puts "1 User Created"

AdminUser.create(email: "admin@test.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "Name")      

puts "1 Admin User Created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"