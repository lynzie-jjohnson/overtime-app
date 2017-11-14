@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "John", last_name: "Son")      

puts "1 User Created"
100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"